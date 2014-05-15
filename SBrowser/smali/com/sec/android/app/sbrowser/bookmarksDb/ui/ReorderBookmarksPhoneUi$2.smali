.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;
.super Ljava/lang/Object;
.source "ReorderBookmarksPhoneUi.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObjectsize()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->clearAsyncTask()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I
    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;I)I

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObjectsize()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->fillImages(I)V

    :cond_0
    return-void
.end method
