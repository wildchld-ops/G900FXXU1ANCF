.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;
.super Ljava/lang/Object;
.source "ReorderBookmarksPhoneUiAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
