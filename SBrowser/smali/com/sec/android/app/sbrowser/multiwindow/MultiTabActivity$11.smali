.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    sget v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f266666

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->animateTempImage()V

    :cond_1
    return-void
.end method
