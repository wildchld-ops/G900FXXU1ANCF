.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$2;
.super Ljava/lang/Object;
.source "SelectBookmarkFolderPhoneUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;->displayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;->onBookmarkObjectSelected(I)V

    return-void
.end method
