.class public Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;
.super Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;
.source "EasyInteractionActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;,
        Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    return-void
.end method


# virtual methods
.method protected changeTabIfOverflow(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->findLastTabIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method protected createActionSpinnerAdapter(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;-><init>(Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

    return-void
.end method

.method public findLastTabIndex()I
    .locals 2

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getDescriptionString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPositionByTabState(I)I
    .locals 0

    return p1
.end method

.method public getTabStateByPosition(I)I
    .locals 0

    return p1
.end method

.method protected isBlockFavoritesTab()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected loadLastTabPreference()I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "interactionActionBarAdapter.lastTab"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected restoreCurrentTab(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->setCurrentTab(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method protected setMyTabListener()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;-><init>(Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    return-void
.end method

.method protected setTabActions()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setupTabs()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0e006e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->addTab(II)V

    const/4 v0, 0x1

    const v1, 0x7f0e01ad

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->addTab(II)V

    return-void
.end method

.method protected updateDropdownNavigation()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method protected updateNavigationTabs()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->findLastTabIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    return-void
.end method
