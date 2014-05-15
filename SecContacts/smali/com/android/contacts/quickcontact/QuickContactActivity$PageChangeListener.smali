.class Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mScrollingState:I

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method

.method private renderSelectedRectangle(IF)V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v4, 0x7f0b014f

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I
    invoke-static {v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;I)I

    move-result v1

    int-to-float v3, p1

    add-float/2addr v3, p2

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int v4, p1, v1

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    iput p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->renderSelectedRectangle(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-static {v1, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setFocusableInTouchMode(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->renderSelectedRectangle(IF)V

    :cond_1
    return-void
.end method
