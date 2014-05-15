.class public Lcom/samsung/dialer/impl/DialpadSearchImpl;
.super Ljava/lang/Object;
.source "DialpadSearchImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final SMART_SEARCH_FRAGMENT_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMode:I

.field private mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

.field private mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

.field private mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

.field private mSmartDialSearchView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dialpad_smart_search"

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->SMART_SEARCH_FRAGMENT_TAG:Ljava/lang/String;

    sget-object v0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create DialpadSearchImpl - mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mMode:I

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->setupSearchView()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->setupSearchFragment()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x2001 -> :sswitch_1
    .end sparse-switch
.end method

.method private executeDialpadSearch(Ljava/lang/String;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->setupViewUpdater()V

    :cond_0
    invoke-static {p1}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->isDisplayOrderPrimary()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    sget-object v0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute DialpadSearch - arg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchTask:Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    goto :goto_0
.end method

.method public static executeRegularSearch(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.REGULAR_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupSearchFragment()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "dialpad_smart_search"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-direct {v0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080256

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    const-string v3, "dialpad_smart_search"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->hideSearchFragment()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "dialpad_smart_search"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 4

    iget v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mMode:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchView:Landroid/view/View;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupViewUpdater()V
    .locals 6

    sget-object v2, Lcom/samsung/dialer/impl/DialpadSearchImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupViewUpdater"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mMode:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    new-instance v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->isDisplayOrderPrimary()Z

    move-result v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/EditText;Z)V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-dialpad"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanupView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->cleanupView()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    return-void
.end method

.method public getDialpadSearchView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchView:Landroid/view/View;

    return-object v0
.end method

.method public hideSearchFragment()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public isDisplayOrderPrimary()Z
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingSearchDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSearchViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->isShowingSearchDialog()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeywordChanged(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->onKeywordChanged(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onKeywordChanged(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->onKeywordChanged(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onKeywordChanged(Ljava/lang/String;ZZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mMode:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->executeDialpadSearch(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->clearLastSearchKeyword()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadSearchImpl;->mSmartDialSearchFragment:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->onKeywordChanged(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x2001 -> :sswitch_1
    .end sparse-switch
.end method
