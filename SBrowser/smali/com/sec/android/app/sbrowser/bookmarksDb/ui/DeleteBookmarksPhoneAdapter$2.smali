.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;
.super Ljava/lang/Object;
.source "DeleteBookmarksPhoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$objName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$convertView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$objName:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->getShowMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$convertView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$objName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->getShowMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$convertView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->val$objName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
