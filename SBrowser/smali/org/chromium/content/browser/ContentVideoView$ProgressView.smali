.class Lorg/chromium/content/browser/ContentVideoView$ProgressView;
.super Landroid/widget/LinearLayout;
.source "ContentVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressView"
.end annotation


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;->addView(Landroid/view/View;)V

    return-void
.end method
