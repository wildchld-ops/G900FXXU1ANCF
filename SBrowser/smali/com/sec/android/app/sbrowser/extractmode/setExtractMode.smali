.class public Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;
.super Landroid/widget/RelativeLayout;
.source "setExtractMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContextVar:Landroid/content/Context;

.field private mPageExtractMessage:Landroid/widget/TextView;

.field private mResetExtractMode:Landroid/widget/Button;

.field private mSetExtractMode:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mSetExtractMode:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setExtractModeVisibility(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/sec/android/app/sbrowser/preferences/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, ":android:no_headers"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, ":android:show_fragment"

    const-class v5, Lcom/sec/android/app/sbrowser/preferences/ExtractMode;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x2002

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "SBrowserMainActivityContextId"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mContextVar:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const/16 v5, 0x28

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mResetExtractMode:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setExtractValueCheck(Z)V

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setExtractModeVisibility(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mSetExtractMode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mSetExtractMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mResetExtractMode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mResetExtractMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mPageExtractMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/setExtractMode;->mPageExtractMessage:Landroid/widget/TextView;

    const v1, 0x7f0c0311

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
