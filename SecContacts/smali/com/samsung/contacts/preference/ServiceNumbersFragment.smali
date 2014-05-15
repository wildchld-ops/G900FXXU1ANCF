.class public Lcom/samsung/contacts/preference/ServiceNumbersFragment;
.super Landroid/app/ListFragment;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;,
        Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;,
        Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field private static mProgress:Ljava/lang/ref/WeakReference;
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
.field private mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

.field private mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field protected mQueryHandler:Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private dismissProgress()V
    .locals 3

    sget-object v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[ServiceNumbersFragment]"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private displayProgress(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e02b3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mProgress:Ljava/lang/ref/WeakReference;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->dismissProgress()V

    goto :goto_0
.end method

.method private query()V
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v1, 0x0

    const-string v0, "[ServiceNumbersFragment]"

    const-string v3, "query: starting an async query"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "content://icc/sdn"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v12

    :goto_0
    invoke-virtual {v10, v12}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10, v12}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v12

    :goto_1
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SerivceNumbersTab"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mQueryHandler:Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->displayProgress(Z)V

    return-void

    :cond_1
    move v8, v1

    goto :goto_0

    :cond_2
    move v9, v1

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_0

    const-string v11, "content://icc2/sdn"

    goto :goto_2
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mContext:Landroid/app/Activity;

    const v0, 0x7f030110

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyTitleView:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;-><init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mQueryHandler:Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;

    new-instance v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030111

    iget-object v3, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;-><init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {v3, p3}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->query()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$1;-><init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
