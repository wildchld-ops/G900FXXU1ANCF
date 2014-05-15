.class Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAfterImageTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;->createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$5;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$5;->val$decorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
