.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const v1, 0x7f0a019d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;Landroid/widget/ImageView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v4
.end method
