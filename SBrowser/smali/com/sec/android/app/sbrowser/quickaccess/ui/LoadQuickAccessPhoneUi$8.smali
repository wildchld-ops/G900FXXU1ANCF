.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;
.super Landroid/os/AsyncTask;
.source "LoadQuickAccessPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->refreshPinTabGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->selectItemsFromDB()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$902(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1000(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->setPintTabList(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isPinnedView:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)V

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1102(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedGridView:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setShowEmptyScreenForQuickAccess(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    const/4 v5, 0x7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)V

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1102(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinTabList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->setList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mPinnedViewAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setShowEmptyScreenForQuickAccess(Z)V

    goto :goto_2
.end method
