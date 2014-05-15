.class Lorg/chromium/content/browser/ContentVideoView$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "ContentVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenMediaController"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    return-void
.end method
