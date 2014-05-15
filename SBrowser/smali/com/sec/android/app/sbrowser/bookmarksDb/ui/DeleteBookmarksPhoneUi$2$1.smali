.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2$1;
.super Ljava/lang/Object;
.source "DeleteBookmarksPhoneUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
