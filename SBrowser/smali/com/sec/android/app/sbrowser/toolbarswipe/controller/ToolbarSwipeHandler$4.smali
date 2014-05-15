.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;
.super Landroid/os/AsyncTask;
.source "ToolbarSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->updatePageOnDemand(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

.field final synthetic val$currentView:Landroid/view/View;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$tabId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$tabId:I

    if-ne v2, v3, :cond_0

    const-string v2, "ToolbarSwipeHandler"

    const-string v3, "TAB_SWIPE updatePageOnDemand-current tab, avoiding it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$tabId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->getContentBitmapFromSDcard(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$currentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->val$currentView:Landroid/view/View;

    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE updatePageOnDemand, bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
