.class public Lcom/android/mms/ui/DirectCallTutorialActivity;
.super Landroid/app/Activity;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x2bc

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingTutorial"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "12345678"

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "12345678"

    return-object v0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x7f04003e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DirectCallTutorialActivity;->setContentView(I)V

    const/high16 v2, 0x7f05

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const v2, 0x7f0b0127

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DirectCallTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/android/mms/util/DirectCallingManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    new-instance v3, Lcom/android/mms/ui/DirectCallTutorialActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/DirectCallTutorialActivity$1;-><init>(Lcom/android/mms/ui/DirectCallTutorialActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager;->setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
