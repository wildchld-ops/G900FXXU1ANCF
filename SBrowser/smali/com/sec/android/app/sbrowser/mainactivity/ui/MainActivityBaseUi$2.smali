.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$2;
.super Ljava/lang/Object;
.source "MainActivityBaseUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->displayTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
