.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;
.super Ljava/lang/Object;
.source "QuickLaunchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;

.field final synthetic val$mHighlight:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;->this$1:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;->val$mHighlight:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1$1;->val$mHighlight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
