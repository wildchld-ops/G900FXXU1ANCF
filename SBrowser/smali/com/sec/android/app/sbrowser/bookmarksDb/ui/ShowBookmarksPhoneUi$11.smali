.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->appendAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

.field final synthetic val$folderButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->val$folderButton:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->val$folderButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->isCABShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->finishActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->selectAncestor(I)V

    :cond_1
    return-void
.end method
