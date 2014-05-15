.class public Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;
.super Landroid/widget/RelativeLayout;
.source "showExtractMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContextVar:Landroid/content/Context;

.field private mPageExtractMessage:Landroid/widget/TextView;

.field private mResetExtractMode:Landroid/widget/Button;

.field private mShowExtractMode:Landroid/widget/Button;

.field private mShowTranslateExtractMode:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowExtractMode:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->prepareAndShowExtractPage(Z)V

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setShowExtractModeVisibility(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mResetExtractMode:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setShowExtractModeVisibility(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowTranslateExtractMode:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->prepareAndShowExtractPage(Z)V

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setShowExtractModeVisibility(ZZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const v1, 0x7f0a005a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowExtractMode:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowExtractMode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowTranslateExtractMode:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowTranslateExtractMode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mResetExtractMode:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mResetExtractMode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a005d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mPageExtractMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mPageExtractMessage:Landroid/widget/TextView;

    const v2, 0x7f0c0314

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setShowExtractMode(Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;)V

    return-void
.end method

.method public setTranslateButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowTranslateExtractMode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->mShowTranslateExtractMode:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
