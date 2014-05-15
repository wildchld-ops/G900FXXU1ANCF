.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;
.super Ljava/lang/Object;
.source "MainActivityPhoneUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->removeTabManagerFragment(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$frameLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->val$frameLayout:Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->val$frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0204

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

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
