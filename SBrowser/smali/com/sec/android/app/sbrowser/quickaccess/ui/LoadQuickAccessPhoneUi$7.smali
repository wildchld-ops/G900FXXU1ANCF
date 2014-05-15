.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;
.super Landroid/os/AsyncTask;
.source "LoadQuickAccessPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->updateMostVisitedUi(I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

.field final synthetic val$propertyType:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->val$propertyType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isPinnedView:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getMostVisitedData()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$402(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$402(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8

    const/16 v7, 0x1e

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->checkHomePage()Z

    move-result v0

    const-string v1, "CscFeature_Web_SupportOfflineStartupPage"

    invoke-static {v1}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isPinnedView:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$502(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedGridView:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$200(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->setColumnCount(I)V

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->val$propertyType:I

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getIsDataAvailInNative()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mIsNoItemToBeShown:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Z)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mIsNoItemToBeShown:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$800(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setShowEmptyScreenForMostVisited(Z)V

    :cond_2
    :goto_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->val$propertyType:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mQuickAccessController:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getIsDataAvailInNative()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mIsNoItemToBeShown:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Z)Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->setColumnCount(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->setList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mIsNoItemToBeShown:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Z)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setShowEmptyScreenForMostVisited(Z)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mIsNoItemToBeShown:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Z)Z

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
