.class public Lcom/samsung/dialer/calllog/FakeCallActivity;
.super Landroid/app/Activity;
.source "FakeCallActivity.java"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03009b

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/calllog/FakeCallActivity;->setContentView(I)V

    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/calllog/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const v1, 0x7f0801de

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/calllog/FakeCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/dialer/calllog/FakeCallActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/calllog/FakeCallActivity$1;-><init>(Lcom/samsung/dialer/calllog/FakeCallActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
