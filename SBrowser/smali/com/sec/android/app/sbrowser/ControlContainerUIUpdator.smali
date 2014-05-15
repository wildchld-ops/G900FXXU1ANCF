.class public Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;
.super Ljava/lang/Object;
.source "ControlContainerUIUpdator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:Landroid/content/Context;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private imgBtn:Landroid/widget/ImageButton;

.field private imgView:Landroid/widget/ImageView;

.field private isXlarge:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private navigationFakeHint:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->isXlarge:Z

    return-void
.end method

.method private setBottomBarEasyImg()V
    .locals 4

    const v3, 0x7f02018e

    const v2, 0x7f020020

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method private setBottomBarImg()V
    .locals 3

    const v2, 0x7f020020

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method private setExtractModeImg()V
    .locals 0

    return-void
.end method

.method private setImgs()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setSbrowserMainImg()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setToolBarImg()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setLocationBarImg()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setBottomBarImg()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setBottomBarEasyImg()V

    return-void
.end method

.method private setImgsXlarge()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setSbrowserMainImgXlarge()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setToolBarImgXlarge()V

    return-void
.end method

.method private setLocationBarImg()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01f9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01fa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01fb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method private setSbrowserMainImg()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setSbrowserMainImgXlarge()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setToolBarImg()V
    .locals 5

    const v4, 0x7f0a01f8

    const v3, 0x7f0201db

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a01b7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020181

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0201e7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a0276

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a0278

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgView:Landroid/widget/ImageView;

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a0279

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0201e1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a00f5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "urlEditText : data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->navigationFakeHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->navigationFakeHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->navigationFakeHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->navigationFakeHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setToolBarImgXlarge()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0290

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0292

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0293

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0295

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0297

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->imgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "sbr.launch.perf.fix.rsr"

    const-string v1, "ControlContainerUIUpdator start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->isXlarge:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setImgsXlarge()V

    :goto_0
    const-string v0, "sbr.launch.perf.fix.rsr"

    const-string v1, "ControlContainerUIUpdator end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;->setImgs()V

    goto :goto_0
.end method
