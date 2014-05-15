.class public Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;
.super Lcom/samsung/dialer/dialpad/SearchFragment;
.source "SmartDialSearchFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public displayResultData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
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

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->setData(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_1

    sget-object v1, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayResultData - size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    if-nez v0, :cond_0

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    const-string v2, "displayResultData - is Empty!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public displayResultDataExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
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

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/dialer/dialpad/SearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;-><init>(Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onKeywordChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->executeSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setupDialpadSearch()Lcom/samsung/dialer/dialpad/DialpadSearch;
    .locals 3

    new-instance v0, Lcom/samsung/dialer/dialpad/SmartDialSearch;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->isDisplayOrderPrimary()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/dialpad/SmartDialSearch;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
