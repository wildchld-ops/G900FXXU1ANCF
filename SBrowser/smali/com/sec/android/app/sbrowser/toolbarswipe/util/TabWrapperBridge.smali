.class public Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;
.super Ljava/lang/Object;
.source "TabWrapperBridge.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;


# static fields
.field static final INCOGNITO:Ljava/lang/String; = "incognito"

.field static final TAB_ID:Ljava/lang/String; = "tabId"

.field private static final TAG:Ljava/lang/String; = "TabWrapperBridge"


# instance fields
.field private mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    return-void
.end method


# virtual methods
.method public getActiveTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getGlobalCount()I

    move-result v0

    return v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTabIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getCurrentTabIndex()I

    move-result v0

    return v0
.end method

.method public getIncognitoTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getIncognitoTabCount()I

    move-result v0

    return v0
.end method

.method public getIncognitoTabId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getIncognitoTabId(I)I

    move-result v0

    return v0
.end method

.method public getNormalTab(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getNormalTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getNormalTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getNormalTabCount()I

    move-result v0

    return v0
.end method

.method public getNormalTabId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getNormalTabId(I)I

    move-result v0

    return v0
.end method

.method public getTabAtPosition(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const-string v1, "TabWrapperBridge"

    const-string v2, "TAB_SWIPE : getTabAtPosition, index out of Bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->isIsInCognito()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->getTabById(IZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    goto :goto_0
.end method

.method public getTabById(IZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabById(IZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setAdapterPosition(I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "TabWrapperBridge"

    const-string v3, "TAB_SWIPE : setAdapterPosition: Current tab is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string v2, "TabWrapperBridge"

    const-string v3, "TAB_SWIPE : setAdapterPosition: Already in the same tab"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "TabWrapperBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAB_SWIPE : setContentAdapterPosition position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tabId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->setIndex(I)V

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isIncognitoTab(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->setIndex(IZ)V

    return-void
.end method
