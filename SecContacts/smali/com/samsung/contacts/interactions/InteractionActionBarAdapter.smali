.class public Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;,
        Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;,
        Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field public static mIsEasyMode:Z

.field private static mTalkBackEnable:Z


# instance fields
.field protected blockFavoritesTab:Z

.field protected blockLogsTab:Z

.field private isNavigationTab:Z

.field private isSetupTabs:Z

.field private isStartMultiWindow:Z

.field private isUpdateTabPosition:Z

.field protected final mActionBar:Landroid/app/ActionBar;

.field public mActionSpinnerAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

.field protected final mContext:Landroid/content/Context;

.field protected mCurrentTab:I

.field private mFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field private mIsMultiWindow:Z

.field private mIsPhone:Z

.field private mIsTablet:Z

.field private mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

.field private mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

.field protected final mPrefs:Landroid/content/SharedPreferences;

.field private mRot:I

.field protected mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

.field protected tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsEasyMode:Z

    sput-boolean v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isSetupTabs:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsPhone:Z

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$1;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mRot:I

    iput-boolean p4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isMultiwindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isStartMultiWindow:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isStartMultiWindow:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsMultiWindow:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isStartMultiWindow:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsTablet:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mRot:I

    if-ne v0, v2, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isNavigationTab:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isBlockFavoritesTab()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setMyTabListener()V

    invoke-virtual {p0, p5}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->restoreCurrentTab(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setTabActions()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setupTabs()V

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isSetupTabs:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsTablet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setEmbeddedTabs()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setupNavigationList()V

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isSetupTabs:Z

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return p1
.end method

.method private saveLastTabPreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interactionActionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getDescriptionString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private setupNavigationList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->createActionSpinnerAdapter(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method


# virtual methods
.method protected addTab(II)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method protected changeTabIfOverflow(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->findLastTabIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x2

    :cond_1
    return p1
.end method

.method public checkTalkBackEnable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method protected createActionSpinnerAdapter(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;

    return-void
.end method

.method public findLastTabIndex()I
    .locals 2

    const/4 v0, -0x1

    sget-boolean v1, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    return v0
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

    const v1, 0x7f0e01ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0279

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionByTabState(I)I
    .locals 5

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v4, :cond_2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-eqz v4, :cond_5

    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v4, :cond_8

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    if-ne p1, v2, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    if-ne p1, v3, :cond_b

    move v0, v3

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0
.end method

.method public getTabStateByPosition(I)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x2

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-eqz v4, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-eqz v4, :cond_4

    if-nez p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v4, :cond_6

    if-nez p1, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-ne p1, v3, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->updateNavigationTabs()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->updateDropdownNavigation()V

    goto :goto_0
.end method

.method protected isBlockFavoritesTab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsMultiWindow:Z

    return v0
.end method

.method protected loadLastTabPreference()I
    .locals 4

    const/4 v0, 0x2

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

.method public onClose()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected restoreCurrentTab(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method protected setBlockFavoritesTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    return-void
.end method

.method protected setBlockLogsTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    return-void
.end method

.method public setContactListFilterController(Lcom/android/contacts/common/list/ContactListFilterController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;->onSetCurrentTab(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->changeTabIfOverflow(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-interface {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;->onSelectedTabChanged(I)V

    :cond_4
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0
.end method

.method public setEmbeddedTabs()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setHasEmbeddedTabs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;

    return-void
.end method

.method protected setMyTabListener()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    return-void
.end method

.method protected setTabActions()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setupTabs()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f0e0279

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->addTab(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const v1, 0x7f0e01ab

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->addTab(II)V

    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0e01ad

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->addTab(II)V

    const/4 v0, 0x3

    const v1, 0x7f0e006e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->addTab(II)V

    return-void
.end method

.method protected updateDropdownNavigation()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    return-void
.end method

.method protected updateNavigationTabs()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->blockLogsTab:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->findLastTabIndex()I

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

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mTabListener:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    return-void
.end method
