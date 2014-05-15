.class Lcom/android/mms/ui/BubbleTypePicker$12;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v6, p0, Lcom/android/mms/ui/BubbleTypePicker$12;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
