.class public Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SBrowserExpandableTabSyncListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;,
        Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;
    }
.end annotation


# static fields
.field public static final GROUP_INDICATOR_ICON:I = 0x9000000


# instance fields
.field activityContext:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

.field private collapseStatus:[I

.field private mContext:Landroid/content/Context;

.field private mExpandableListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/util/List;Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListView;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->activityContext:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mExpandableListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->collapseStatus:[I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->activityContext:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->setHistoryListEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private setHistoryListEvent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mExpandableListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mExpandableListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->getChildrenCount(I)I

    move-result v0

    if-nez p4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)V

    const v3, 0x7f0a0284

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->favIcon:Landroid/widget/ImageView;

    const v3, 0x7f0a0285

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->url:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->favIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->favIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v2, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->url:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->favIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->url:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-ge p2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mExpandableListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    new-instance v4, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p4, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-object p4

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;

    goto/16 :goto_0

    :cond_3
    iget-object v4, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$ChildHolder;->url:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)V

    const v1, 0x7f0a0282

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    const/high16 v2, 0x900

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    const v1, 0x7f0a0281

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->collapseStatus:[I

    aget v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->deviceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$GroupHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
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

.method public onGroupCollapse(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->collapseStatus:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->collapseStatus:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0a0285

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_information_preview"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeGroup(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceId:Ljava/lang/String;

    return-object v0
.end method
