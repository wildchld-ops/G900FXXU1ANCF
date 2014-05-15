.class Landroid/support/v4/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;->animateSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

.field final synthetic val$startPosition:F


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    iput p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$1;->val$startPosition:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 7

    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/high16 v2, -0x4080

    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$1;->val$startPosition:F

    invoke-static {}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$300()Landroid/view/animation/OvershootInterpolator;

    move-result-object v4

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle$SliderMoveRunnable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;FFLandroid/view/animation/Interpolator;ILandroid/support/v4/app/ActionBarDrawerToggle$SliderAnimationListener;)V

    return-void
.end method
