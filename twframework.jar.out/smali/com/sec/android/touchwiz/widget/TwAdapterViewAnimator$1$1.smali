.class Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;
.super Ljava/lang/Object;
.source "TwAdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-wide v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->itemId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
