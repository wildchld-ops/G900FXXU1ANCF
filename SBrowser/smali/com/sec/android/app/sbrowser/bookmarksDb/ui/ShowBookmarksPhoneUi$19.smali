.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->showUndoBar(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

.field final synthetic val$noBMParentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->val$noBMParentLayout:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->donotUndoToController()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$19;->val$noBMParentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    return v0
.end method
