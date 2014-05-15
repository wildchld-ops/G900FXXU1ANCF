.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0a0079

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->donotUndoToController()V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
