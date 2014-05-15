.class Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;
.super Ljava/lang/Object;
.source "SBrowserExpandableTabSyncListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->getChildrenCount(I)I

    move-result v0

    if-ge p4, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->activityContext:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->mHistoryList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;->access$000(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->callOnClickListener(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
