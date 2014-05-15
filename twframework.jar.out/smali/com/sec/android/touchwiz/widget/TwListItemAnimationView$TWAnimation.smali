.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TWAnimation"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerInterval:I

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerDuration:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerDuration:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerDuration:F

    div-float v0, v2, v3

    mul-float v1, v0, v0

    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;->userOnApplyTransformation(F)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->invalidate()V

    goto :goto_0

    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;->userOnApplyTransformation(F)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;->userOnEndAnimation()V

    goto :goto_1
.end method

.method public userCancelAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStopAnimation()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;->userOnCancelAnimation()V

    :cond_0
    return-void
.end method

.method public userIsRunningHandler()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    return v0
.end method

.method public userRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStopAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    return-void
.end method

.method public userStartAnimation()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    return-void
.end method

.method public userStartAnimation(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStopAnimation()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mUserOnAnimationListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;->userOnBeginAnimation()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerTick:F

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerDuration:F

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public userStopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mIsRunningHandler:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
