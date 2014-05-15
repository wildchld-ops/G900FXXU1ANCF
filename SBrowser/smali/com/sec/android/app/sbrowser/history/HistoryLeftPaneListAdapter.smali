.class public Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryLeftPaneListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryLeftPaneListAdapter"


# instance fields
.field mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
