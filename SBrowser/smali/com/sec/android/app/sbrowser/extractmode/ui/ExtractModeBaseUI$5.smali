.class Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtractModeBaseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->showControlsForContextualMenuBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$5;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$5;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$502(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
