.class Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderBaseUI.java"


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$502(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
