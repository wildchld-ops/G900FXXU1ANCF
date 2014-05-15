.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;
.super Ljava/lang/Object;
.source "MultiTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->animateTempImage()V

    goto :goto_0
.end method
