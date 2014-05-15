.class Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$6;
.super Ljava/lang/Object;
.source "ReaderBaseUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->showControlsForContextualMenuBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/reader/controller/IReaderActivityUIController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/reader/controller/IReaderActivityUIController;->queryCurrentActionBarHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$600()F

    move-result v3

    sub-float v1, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_0
    return-void
.end method
