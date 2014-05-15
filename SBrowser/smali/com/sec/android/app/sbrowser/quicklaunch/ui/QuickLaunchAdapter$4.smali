.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;
.super Ljava/lang/Object;
.source "QuickLaunchAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mPinnedImageClickListener:Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->access$000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;->val$position:I

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;->onLongClick(Landroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
