.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$4;
.super Ljava/lang/Object;
.source "MoveToFolderBookmarksPhoneUi.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mMoveToFolderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;->fillImages(I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
