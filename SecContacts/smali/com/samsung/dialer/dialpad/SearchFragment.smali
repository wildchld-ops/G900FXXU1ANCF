.class public abstract Lcom/samsung/dialer/dialpad/SearchFragment;
.super Landroid/app/ListFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;,
        Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSetEmptyView:Z

.field protected mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mDialSearch:Lcom/samsung/dialer/dialpad/DialpadSearch;

.field protected mLastKeyword:Ljava/lang/String;

.field protected mNameResultDialog:Landroid/app/AlertDialog;

.field protected mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/SearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->isSetEmptyView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/dialpad/SearchFragment;Landroid/widget/ImageView;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/dialer/dialpad/SearchFragment;->setPhoto(Landroid/widget/ImageView;JJ)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/dialpad/SearchFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setEmptyView()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->isSetEmptyView:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030105

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e037e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->isSetEmptyView:Z

    goto :goto_0
.end method

.method private setPhoto(Landroid/widget/ImageView;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    return-void
.end method

.method private showNumberListDialog(I)Z
    .locals 6

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v4, p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v4}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/dialer/dialpad/NumberListUtil;->getNumberList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f03007f

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v4, p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v4}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0e01ba

    new-instance v5, Lcom/samsung/dialer/dialpad/SearchFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/dialer/dialpad/SearchFragment$1;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/dialer/dialpad/SearchFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/dialer/dialpad/SearchFragment$2;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment;Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mNameResultDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mNameResultDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mNameResultDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mNameResultDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearLastSearchKeyword()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    return-void
.end method

.method public abstract displayResultData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayResultDataExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public executeSearch(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->executeSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method public executeSearch(Ljava/lang/String;Z)V
    .locals 4

    sget-object v1, Lcom/samsung/dialer/dialpad/SearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeSearch - keyword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    invoke-virtual {v1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mSearchTask:Lcom/samsung/dialer/dialpad/SearchFragment$SearchTask;

    goto :goto_0
.end method

.method public getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 5

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p3, :cond_0

    if-gt p2, p3, :cond_0

    :try_start_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/dialer/dialpad/SearchFragment;->TAG:Ljava/lang/String;

    const-string v3, "getHighlightedString - IndexOutOfBoundsException in setSpan"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDisplayOrderPrimary()Z
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/dialpad/SearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->setupDialpadSearch()Lcom/samsung/dialer/dialpad/DialpadSearch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mDialSearch:Lcom/samsung/dialer/dialpad/DialpadSearch;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method public onKeywordChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->executeSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getSearchType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/dialer/dialpad/DialpadUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p3}, Lcom/samsung/dialer/dialpad/SearchFragment;->showNumberListDialog(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/dialer/dialpad/DialpadUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;->setEmptyView()V

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    return-void
.end method

.method public abstract setupDialpadSearch()Lcom/samsung/dialer/dialpad/DialpadSearch;
.end method
