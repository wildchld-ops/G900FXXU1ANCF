.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$1;
.super Ljava/lang/Object;
.source "MoveToFolderBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
