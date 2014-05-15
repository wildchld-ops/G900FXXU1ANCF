.class Lcom/android/mms/ui/BackgroundColorPicker$8;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setSelection(I)V

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f02012e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$8;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    const v4, 0x7f0202ba

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method
