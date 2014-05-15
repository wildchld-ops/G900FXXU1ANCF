.class Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field private final NO_CONFIGURATION_CHANGED:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomBackground:Landroid/graphics/drawable/Drawable;

.field private mOldConfiguration:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->NO_CONFIGURATION_CHANGED:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;-><init>(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeCustomBackgroundBounds()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getHeight()I

    move-result v4

    int-to-float v6, v2

    int-to-float v7, v1

    div-float v0, v6, v7

    int-to-float v6, v5

    int-to-float v7, v4

    div-float v3, v6, v7

    cmpl-float v6, v0, v3

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v5

    div-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    #calls: Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$600(Lcom/android/keyguard/KeyguardViewManager;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardViewManager;->access$700(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConfigurationChanged: view not visible"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x7000

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->invalidate()V

    return-void
.end method
