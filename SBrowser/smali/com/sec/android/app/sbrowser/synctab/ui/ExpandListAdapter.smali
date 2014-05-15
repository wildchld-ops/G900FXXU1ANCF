.class public Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;
    }
.end annotation


# static fields
.field public static final GROUP_INDICATOR_ICON:I = 0x9000000

.field private static final TAG:Ljava/lang/String; = "ExpandListAdapter"

.field private static final TIME_FACTOR:I = 0x3e8


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;"
        }
    .end annotation
.end field

.field private hoverInflater:Landroid/view/LayoutInflater;

.field protected mContext:Landroid/content/Context;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/synctab/controller/SynctabActivityController;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/synctab/controller/SynctabActivityController;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V

    const v2, 0x7f0a0284

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->favicon:Landroid/widget/ImageView;

    const v2, 0x7f0a0285

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->favicon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->favIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v1, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->favicon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->favIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object p4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0

    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V

    const v4, 0x7f0a0146

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v1, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$GroupViewHolder;->url:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_2
    const v4, 0x7f040098

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object p3, v3

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeGroup(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setExpandableListView(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-void
.end method
