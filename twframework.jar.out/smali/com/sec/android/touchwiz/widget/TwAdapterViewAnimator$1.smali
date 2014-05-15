.class Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;
.super Ljava/lang/Object;
.source "TwAdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
