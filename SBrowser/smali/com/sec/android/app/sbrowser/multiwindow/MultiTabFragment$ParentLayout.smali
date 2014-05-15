.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;
.super Landroid/widget/LinearLayout;
.source "MultiTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParentLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->handleTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
