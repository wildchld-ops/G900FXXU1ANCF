.class public Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ReadingListActivity.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "images"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final WAITING_TIME_LIMIT:J

.field private final defaultFilter:Ljava/lang/String;

.field public forSearchView:Z

.field id:Ljava/lang/Integer;

.field mActionModeMenu:Landroid/view/Menu;

.field private mActionModeSpinner:Landroid/widget/Spinner;

.field private mActionModeTextview:Landroid/widget/TextView;

.field protected mActionModeView:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupReadingListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mCheck:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDeleteIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDeletePosition:I

.field mEditorLisnter:Landroid/widget/TextView$OnEditorActionListener;

.field private mForDelete:Z

.field private mForDestroying:Landroid/view/ActionMode;

.field private mForProgressDialog:Z

.field public mIsShowingActionMode:Z

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLinearLayoutList:Landroid/widget/LinearLayout;

.field mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

.field private mMenuReadingList:Landroid/view/Menu;

.field mNoItemReadingListLayout:Landroid/widget/LinearLayout;

.field mPosition:Ljava/lang/Integer;

.field private mReaderListObserver:Landroid/database/ContentObserver;

.field private mReadingDataToDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

.field private mReadingListDataForDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

.field private mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

.field mReadingListView:Landroid/widget/ListView;

.field mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mSeachEditTextData:Landroid/widget/EditText;

.field private mSearchFlag:Z

.field private mSelectdelete:Z

.field private mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

.field private mSlectedItemCount:I

.field mSpinnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextTextWatcher:Landroid/text/TextWatcher;

.field private mTextView:Landroid/widget/TextView;

.field private mToggleCustomView:Z

.field private mUndo:Z

.field mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field save:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

.field private undoBarNoReadingListHandler:Landroid/os/Handler;

.field private undoBarNoReadingListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->save:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->id:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mPosition:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    const-string v0, "_id >= 0 AND is_deleted = 0"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->defaultFilter:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->forSearchView:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->WAITING_TIME_LIMIT:J

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mEditorLisnter:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mTextTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDestroying:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    return p1
.end method

.method static synthetic access$1504(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    return v0
.end method

.method static synthetic access$1506(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->closeMenuOptionsList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkResultSize()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z

    return p1
.end method

.method private checkResultSize()V
    .locals 2

    const v1, 0x7f0a0069

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private closeMenuOptionsList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    :cond_0
    return-void
.end method

.method private createNewWindow()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getIsReaderPage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "savePageStoragePath"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v4, 0x1e

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    goto :goto_0
.end method

.method private setListItems()V
    .locals 7

    const v6, 0x7f0a02ca

    const v5, 0x7f0a02c9

    const v4, 0x7f0a02c8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setListItemsForDelete()V
    .locals 5

    const/4 v4, 0x1

    const v3, 0x7f0a02cb

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    const v1, 0x7f0a02ca

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    const v1, 0x7f0a02c9

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    const v1, 0x7f0a02c8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v1, 0x7f0c032d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public checkForEmptyList()Z
    .locals 6

    const v5, 0x7f0a02ce

    const v4, 0x7f0a02cd

    const v3, 0x7f0a02cc

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x7f040086

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setContentView(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    const v3, 0x7f0a0079

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return v0

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public clearReadingList()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while clearReadingList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public clearUndoIfShown(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v4, 0x7f0a007b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v4, 0x2

    new-array v1, v4, [I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v1, v2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v1, v2

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget v5, v1, v3

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget v5, v1, v3

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p0, v6}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public createReadingListDatas(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->clearReadingList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v8, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6, p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getReadingListData(Landroid/database/Cursor;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkResultSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v6, 0x0

    :cond_2
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_2
    move-exception v7

    :try_start_3
    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v1
.end method

.method public deleteItems()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->clearUndoIfShown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getForSearchView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->forSearchView:Z

    return v0
.end method

.method public getReadingListImageFetcher()Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    return-object v0
.end method

.method public hideViewOfSearch()V
    .locals 8

    const v7, 0x7f0a02ce

    const v6, 0x7f0a02cd

    const v5, 0x7f0a02cc

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->deleteItems()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->show()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Landroid/view/ActionMode;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->getList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->shareUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iput v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->getList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createNewWindow()V

    goto/16 :goto_0

    :cond_8
    iput v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x7f0a02c8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x1e

    const/16 v6, 0x18

    const/4 v5, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openLinkInTabFromReader"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_0
    const/16 v3, 0x23

    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x15

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_1
    const/16 v3, 0x24

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x17

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_2
    const/16 v3, 0x25

    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_3
    const/16 v3, 0x26

    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "readerContextmenuItemUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_4
    const/16 v3, 0x27

    if-ne p2, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_5
    if-ne p2, v7, :cond_6

    invoke-virtual {p0, v7, p3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    if-eqz v2, :cond_0

    const-string v2, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$15;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->hideViewOfSearch()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f0a01e3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SBrowserMainActivityContextId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    const v4, 0x7f040004

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setContentView(I)V

    const v4, 0x7f0a006a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a006d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayoutList:Landroid/widget/LinearLayout;

    const v4, 0x7f0a006b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    const v4, 0x7f0a006c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    const v4, 0x7f0a006e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    const v5, 0x7f0a0079

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;

    const-string v4, "images"

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x3dcccccd

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->setImageFadeIn(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->registerForContextMenu(Landroid/view/View;)V

    const-string v4, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkForEmptyList()Z

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4, v5, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mflag:Z

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReaderListObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReaderListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$3;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const-class v4, Landroid/view/ViewConfiguration;

    const-string v5, "sHasPermanentMenuKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayoutList:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayoutList:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$18;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$18;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v4, 0x7f0c032d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    const v4, 0x7f0c032e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSpinnerItems:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    new-instance v3, Landroid/widget/Spinner;

    const v4, 0x10102d7

    invoke-direct {v3, p0, v9, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeSpinner:Landroid/widget/Spinner;

    const v4, 0x7f020177

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040024

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0101

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$19;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$19;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0103

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c032f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0e

    invoke-virtual {v3, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeMenu:Landroid/view/Menu;

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->showCheckBox(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V

    :goto_1
    new-instance v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$20;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDestroying:Landroid/view/ActionMode;

    return v8

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0a02ce

    const v3, 0x7f0a02cd

    const v2, 0x7f0a02cc

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->clear()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongPressedReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReaderListObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReaderListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReaderListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->destroy()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayoutList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->showCheckBox(Z)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v0, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$21;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkForEmptyList()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v5

    :sswitch_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    if-eqz v2, :cond_1

    const-string v2, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$6;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->hideViewOfSearch()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-direct {v2, v6, p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->forSearchView:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-direct {v2, v6, p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->showSearchView()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a02cc -> :sswitch_1
        0x7f0a02cd -> :sswitch_2
        0x7f0a02ce -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->setExitTasksEarly(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->flushCache()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListImageFetcher:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->setExitTasksEarly(Z)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onUndo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->show()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    if-nez v0, :cond_2

    const-string v0, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$12;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z

    if-eqz v0, :cond_3

    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLinearLayoutList:Landroid/widget/LinearLayout;

    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    const v1, 0x7f0a0079

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    const-string v0, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$13;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$14;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_3
    return-void
.end method

.method public searchReadingListItem(Z)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id >= 0 AND is_deleted = 0 AND (title LIKE  \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIKE  \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIKE  \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$8;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkResultSize()V

    return-void
.end method

.method public setForSearchView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->forSearchView:Z

    return-void
.end method

.method public setSelection(Z)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V

    :goto_3
    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$22;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetInvalidated()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c032f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V

    goto :goto_3
.end method

.method public showSearchView()V
    .locals 7

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    if-nez v3, :cond_1

    const v3, 0x7f040073

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v3, 0x7f0a01e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0258

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mEditorLisnter:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mTextTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f0a01e6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->showViewOfSearch()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->searchReadingListItem(Z)V

    goto :goto_0
.end method

.method public showViewOfSearch()V
    .locals 7

    const v6, 0x7f0a02ce

    const v5, 0x7f0a02cd

    const v4, 0x7f0a02cc

    const/4 v3, 0x0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mToggleCustomView:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mMenuReadingList:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public updateSpinner(ZI)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetChanged()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method
