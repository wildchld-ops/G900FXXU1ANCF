.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionEnable:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "[Motion-DoubleTap]"

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5500(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
