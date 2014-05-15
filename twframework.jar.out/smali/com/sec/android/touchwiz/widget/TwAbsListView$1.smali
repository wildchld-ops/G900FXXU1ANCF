.class Lcom/sec/android/touchwiz/widget/TwAbsListView$1;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;->val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    :cond_0
    return-void
.end method
