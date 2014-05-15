.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$10;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->configureAndShowView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->clearUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->launchHistoryActivity()V

    return-void
.end method
