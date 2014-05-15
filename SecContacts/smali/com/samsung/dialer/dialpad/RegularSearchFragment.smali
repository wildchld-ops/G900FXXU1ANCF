.class public Lcom/samsung/dialer/dialpad/RegularSearchFragment;
.super Lcom/samsung/dialer/dialpad/SearchFragment;
.source "RegularSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/SearchFragment;-><init>()V

    return-void
.end method

.method private clearFocusOnSoftKeyboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->clearFocusOnActionBarSearchView()V

    :cond_0
    return-void
.end method

.method private hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->clearFocusOnSoftKeyboard()V

    return-void
.end method


# virtual methods
.method public displayResultData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->setData(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayResultData - size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->TAG:Ljava/lang/String;

    const-string v1, "displayResultData - is Empty!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public displayResultDataExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
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

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->addAll(Ljava/util/Collection;)V

    sget-object v0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayResultDataExtra - size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/dialer/dialpad/SearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setupDialpadSearch()Lcom/samsung/dialer/dialpad/DialpadSearch;
    .locals 3

    new-instance v0, Lcom/samsung/dialer/dialpad/RegularSearch;

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->isDisplayOrderPrimary()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/dialpad/RegularSearch;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
