.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$1;
.super Ljava/lang/Object;
.source "CreateBookmarkFolderPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    return v0
.end method
