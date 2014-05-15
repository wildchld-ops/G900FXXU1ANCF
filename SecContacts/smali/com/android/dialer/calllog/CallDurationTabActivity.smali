.class public Lcom/android/dialer/calllog/CallDurationTabActivity;
.super Landroid/app/TabActivity;
.source "CallDurationTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const-string v0, "CallDurationTabActivity"

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDurationTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method public static getSimCardIcon(I)I
    .locals 2

    invoke-static {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimIconIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0201e1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0201e1

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0201e3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0201e5

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0201eb

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0201e9

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0201e8

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0201e7

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0201ea

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0201e6

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0201e2

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0201e4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getSimIconIndex(I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_1

    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const-string v1, "gsm.sim.icon"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "ril.ICC_TYPE2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const-string v1, "gsm.sim.icon2"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private onHomeSelected()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->finish()V

    return-void
.end method

.method private setupSim1Tab()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CallDurationTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    sget-object v1, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private setupSim2Tab()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CallDurationTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    sget-object v1, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method public getSimName(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const v3, 0x7f0e0326

    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0e0327

    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez p1, :cond_5

    move-object v2, v0

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const-string v3, "gsm.sim.cardname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v3, "ril.ICC_TYPE2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move-object v2, v1

    goto :goto_0

    :cond_4
    const-string v3, "gsm.sim.cardname2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->setupSim1Tab()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->setupSim2Tab()V

    const v0, 0x7f0e02df

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->setTitle(I)V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->configureActionBar()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->onHomeSelected()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    sget-object v3, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimCardIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v3, Lcom/android/dialer/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallDurationTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
