.class Lcom/android/mms/ui/BubbleTypePicker$6;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->setActionBar()V
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

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleSentStyle(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/BubbleTypePicker;->access$200(Lcom/android/mms/ui/BubbleTypePicker;I)V

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleReceiveStyle(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/BubbleTypePicker;->access$300(Lcom/android/mms/ui/BubbleTypePicker;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$6$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$6$1;-><init>(Lcom/android/mms/ui/BubbleTypePicker$6;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/BubbleTypePicker;->finish()V

    return-void
.end method
