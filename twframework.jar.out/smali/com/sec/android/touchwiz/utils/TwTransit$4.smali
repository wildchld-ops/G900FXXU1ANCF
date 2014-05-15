.class Lcom/sec/android/touchwiz/utils/TwTransit$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$4;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$4;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    return-void
.end method
