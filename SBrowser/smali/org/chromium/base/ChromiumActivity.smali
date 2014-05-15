.class public Lorg/chromium/base/ChromiumActivity;
.super Landroid/app/Activity;
.source "ChromiumActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/chromium/base/ActivityStatus;->onStateChange(Landroid/app/Activity;I)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
