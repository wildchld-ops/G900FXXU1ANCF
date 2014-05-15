.class public Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;
.super Ljava/lang/Object;
.source "SearchEngineXLargeUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mScreenWidth:I

.field private mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method


# virtual methods
.method public createUi(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x101006b

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$1;-><init>(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;-><init>(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public dismissUi()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setContext(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    return-void
.end method

.method public showUi(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
