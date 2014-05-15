.class public Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;
.super Landroid/widget/RelativeLayout;
.source "showTranslateMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContextVar:Landroid/content/Context;

.field private mExtractModeController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

.field private mPageTranslateMessage:Landroid/widget/TextView;

.field private mResetTranslateMode:Landroid/widget/Button;

.field private mShowTranslateMode:Landroid/widget/Button;

.field private mUI:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mContextVar:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mContextVar:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mShowTranslateMode:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mUI:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setShowTranslateModeVisibility(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/sec/android/app/sbrowser/preferences/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mContextVar:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, ":android:show_fragment"

    const-class v4, Lcom/sec/android/app/sbrowser/preferences/TranslateModePreferences;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x2002

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "SBrowserMainActivityContextId"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mExtractModeController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getCurrentSBrowserMainContextId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mContextVar:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mResetTranslateMode:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mUI:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setShowTranslateModeVisibility(Z)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setTranslateModeUserPref(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a024f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mShowTranslateMode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mShowTranslateMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0250

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mResetTranslateMode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mResetTranslateMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mPageTranslateMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mPageTranslateMessage:Landroid/widget/TextView;

    const v1, 0x7f0c031a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mContextVar:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->getController()Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mExtractModeController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mExtractModeController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mExtractModeController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getUI()Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mUI:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;->mUI:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setShowTranslateMode(Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;)V

    return-void
.end method
