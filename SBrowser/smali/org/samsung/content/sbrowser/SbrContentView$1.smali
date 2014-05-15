.class Lorg/samsung/content/sbrowser/SbrContentView$1;
.super Ljava/lang/Object;
.source "SbrContentView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrContentView;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentView;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentView$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/samsung/content/sbrowser/SbrContentView;->isAnimationRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/samsung/content/sbrowser/SbrContentView;->isAnimationRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentView$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/samsung/content/sbrowser/SbrContentView;->isAnimationRunning:Ljava/lang/Boolean;

    return-void
.end method
