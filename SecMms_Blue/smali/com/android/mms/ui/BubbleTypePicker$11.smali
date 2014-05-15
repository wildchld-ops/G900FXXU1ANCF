.class Lcom/android/mms/ui/BubbleTypePicker$11;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V
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

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$11;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$11;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$11;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$11;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$11;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
