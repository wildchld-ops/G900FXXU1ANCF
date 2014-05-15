.class Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;
.super Ljava/lang/Object;
.source "QuickLaunchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mPinnedImageClickListener:Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->access$000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;->onClick(Landroid/view/View;I)V

    return-void
.end method
