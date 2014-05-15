.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;
.super Ljava/lang/Object;
.source "MultiTabOutroUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->finishActivty()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->isAnimating:Z

    return-void
.end method
