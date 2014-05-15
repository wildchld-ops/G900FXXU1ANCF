.class Lcom/android/mms/ui/BackgroundColorPicker$6;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v0, p3, p1, p2}, Lcom/android/mms/ui/BackgroundColorPicker;->access$500(Lcom/android/mms/ui/BackgroundColorPicker;ILandroid/widget/AdapterView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateScrollPosition(IIII)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateScrollPosition(IIII)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
