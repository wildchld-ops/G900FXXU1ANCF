.class public Lcom/samsung/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;,
        Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field private static mCP_Start:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mCanceled:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

.field private mDoneButtonClickable:Z

.field private mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mHomeCheck:Z

.field private mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/common/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field public mToastHandler:Landroid/os/Handler;

.field private mTotalCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private selectAllAtFirstLoad:Z

.field private showConfirmationDialog:Z

.field private simcopycallfromAAB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    const-string v0, "simcopycallfromAAB"

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    new-instance v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$4;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mTotalCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method private adjustActionBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->updateSelectionMenu()V

    return-void
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method private configureComponenets()V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "Sim_WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v1, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 9

    const/4 v1, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v6, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-direct {v6}, Lcom/samsung/contacts/list/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    iput-object v6, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0, v8}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080036

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :sswitch_1
    new-instance v6, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-direct {v6}, Lcom/samsung/contacts/list/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/16 v1, -0xb

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x136

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    :goto_1
    iput-object v6, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    goto :goto_1

    :sswitch_2
    new-instance v6, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-direct {v6}, Lcom/samsung/contacts/list/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v6, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto/16 :goto_0

    :sswitch_3
    new-instance v6, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-direct {v6}, Lcom/samsung/contacts/list/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v6, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x15e -> :sswitch_1
        0x190 -> :sswitch_2
        0x19a -> :sswitch_3
        0x1c2 -> :sswitch_3
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isSIM2Enabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isSIMEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDelete(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "simcopycallfromAAB"

    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    if-eqz p1, :cond_0

    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v11}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "CP_Start"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    sget v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    if-ne v2, v12, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_name"

    const-string v5, "primary.sim.account_name"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_type"

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_3

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v9, Landroid/content/Intent;

    const-string v2, "SIM_IMPORT_FINISHED"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0, v9}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v10}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    :cond_6
    const v2, 0x7f030115

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->adjustActionBar()V

    invoke-direct {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->configureComponenets()V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    new-instance v2, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_0

    sget v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onCancel()V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onDeleteResult()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onCopyResult()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_0
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDelete(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSearchMode(Z)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->hideSoftKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mode"

    iget v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    new-instance v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public updateSelectionMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMContactSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SIMContactSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTotalCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mTotalCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
