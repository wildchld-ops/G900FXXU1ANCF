.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$6;
.super Ljava/lang/Object;
.source "DeleteBookmarksPhoneUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->setParentFolderName(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$6;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$6;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
