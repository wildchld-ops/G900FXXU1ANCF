.class Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
.super Ljava/lang/Object;
.source "SBrowserTabControlOrderController.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NO_TAB:I = 0xff


# instance fields
.field private mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-void
.end method

.method private getIndexOfLastTabOpenedBy(II)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    if-lt v0, p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getOpenerId()I

    move-result v2

    if-eq v2, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static linkClicked(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sameControlType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ILcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->linkClicked(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result p2

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->willOpenInForeground(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->forgetAllOpeners()V

    :cond_1
    return p2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-nez v3, :cond_1

    sget-boolean v6, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabIndexById(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-static {v6, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->sameControlType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->willOpenInForeground(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->getIndexOfLastTabOpenedBy(II)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method forgetAllOpeners()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->setOpenerId(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method willOpenInForeground(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Z)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->mControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chrome://newtab/#most_visited"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
