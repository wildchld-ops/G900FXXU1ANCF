.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;
.super Ljava/lang/Object;
.source "LoadQuickAccessPhoneUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mDraggedList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1602(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedGridView:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->startEditMode()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mDeleteBookmarkContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1700(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->startSlideUpAniamtion()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->draggedPosition:I
    invoke-static {v1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isPinnedView:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$902(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$13;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->draggedItem:Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1902(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    :cond_1
    return v4
.end method
