.class public Lcom/samsung/contacts/group/GroupChangeOrderListFragment;
.super Landroid/app/Fragment;
.source "GroupChangeOrderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,
        Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;,
        Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$1;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    return-void
.end method

.method private getGroupOrderList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private updateDoneButton()V
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget v3, v3, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->order:I

    if-eq v3, v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    invoke-interface {v3, v0}, Lcom/samsung/contacts/listener/ButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    const v1, 0x7f0300a9

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0300a8

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v1, -0xc

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDoneClicked()V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget-object v4, v4, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "group_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/contacts/ContactSaveService;->createChangeOrderIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->getGroupOrderList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    const-string v0, "groupOrderList"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "groupOrderList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mGroupOrderList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setActionBarButtonUpdateListener(Lcom/samsung/contacts/listener/ButtonUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    return-void
.end method
