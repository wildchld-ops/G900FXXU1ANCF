.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;


# instance fields
.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mCustomSearchViewContainer:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mListContainer:Landroid/view/View;

.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSelectedButtonText:Ljava/lang/String;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mSoftInputMode:I

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    return-void
.end method

.method private createCustomSearchbar(Z)V
    .locals 7

    const v4, 0x7f080214

    const v3, 0x7f08002b

    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v1, 0x7f080149

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchViewContainer:Landroid/view/View;

    const v1, 0x7f080147

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0e01aa

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e037e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    return-void
.end method

.method private dismissProgressAndFinish(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    return-void
.end method

.method private joinAggregate(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const v2, 0x7f0e0386

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [J

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const/4 v4, 0x1

    const-class v5, Lcom/android/contacts/activities/JoinContactActivity;

    const-string v6, "joinCompleted"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;J[JZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->updateSelectionCount(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private updateSelectionCount(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedButtonText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedButtonText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public configureEmptyView(ZZ)V
    .locals 5

    const/16 v4, 0x10

    const/16 v3, 0x30

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    if-eq v0, v4, :cond_0

    iput v4, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    if-eq v0, v3, :cond_2

    iput v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    if-eq v0, v3, :cond_4

    iput v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSoftInputMode:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchViewContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_7

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_3
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/JoinContactListFragment;->setListener(Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iput v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    iget-wide v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-string v2, "JoinContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is missing required extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string v2, "selectedCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionBar()V

    const v2, 0x7f0300d2

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->createCustomSearchbar(Z)V

    const v1, 0x7f080232

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListContainer:Landroid/view/View;

    const v1, 0x7f0e0338

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f11000b

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f080172

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f080171

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v3, 0x1

    return v3
.end method

.method public onListUpdated(ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/activities/JoinContactActivity;->configureEmptyView(ZZ)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/JoinContactActivity;->dismissProgressAndFinish(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getSelectedContactUris()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->joinAggregate(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->isDone(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080172 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f080172

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQueryString(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    return v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-string v0, "isProgressShowing"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f0e0386

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "selectedCount"

    iget v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isProgressShowing"

    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onSelectionUpdated(I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    if-nez v1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    if-lez v1, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    iget v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->updateSelectionCount(I)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->invalidateOptionsMenu()V

    :cond_3
    return-void
.end method
