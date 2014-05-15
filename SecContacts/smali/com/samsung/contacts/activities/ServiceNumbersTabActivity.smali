.class public Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;
.super Landroid/app/TabActivity;
.source "ServiceNumbersTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mSimInfoChanged:Z

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mCurrentTab:I

.field private mSim1Name:Ljava/lang/String;

.field private mSim2Name:Ljava/lang/String;

.field manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mCurrentTab:I

    return-void
.end method

.method public static setSimIconChanged(Z)V
    .locals 3

    const-string v0, "ServiceNumbersTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    return-void
.end method

.method private setupSim1Tab()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "setupSim1Tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc/sdn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    sget-object v1, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private setupSim2Tab()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "setupSim2Tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc2/sdn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    sget-object v1, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->setSimIconChanged(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    invoke-direct {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    invoke-direct {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    :cond_1
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
