.class Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

.field final synthetic val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-virtual {v4}, Lcom/android/contacts/quickcontact/CheckableImageView;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/HorizontalScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-virtual {v0, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setFocusableInTouchMode(Z)V

    return-void
.end method
