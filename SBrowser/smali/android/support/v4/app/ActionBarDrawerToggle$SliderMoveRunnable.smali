.class Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderMoveRunnable"
.end annotation


# instance fields
.field private duration:I

.field private endPos:F

.field private interpolator:Landroid/view/animation/Interpolator;

.field private listener:Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;

.field private startPos:F

.field private startTime:J

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;FFLandroid/view/animation/Interpolator;ILandroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->startPos:F

    iput p3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->endPos:F

    iput-object p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->interpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->duration:I

    iput-object p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->listener:Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->startTime:J

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->run()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->startTime:J

    sub-long v3, v1, v6

    long-to-float v6, v3

    iget v7, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->duration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    iget v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->startPos:F

    iget-object v7, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    iget v8, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->endPos:F

    iget v9, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->startPos:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    iget-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
    invoke-static {v6}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    iget v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->duration:I

    int-to-long v6, v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    iget-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v6}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$500(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->listener:Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;->listener:Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;

    invoke-interface {v6}, Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;->onAnimationEnd()V

    goto :goto_0
.end method
