.class public Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;
.super Landroid/app/Fragment;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;,
        Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

.field private mRootView:Landroid/view/View;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private dismissProgress()V
    .locals 3

    sget-object v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const-string v1, "GroupMultipleDeletionFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GroupMultipleDeletionFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GroupMultipleDeletionFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setDoneButton(II)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/ButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/listener/ButtonUpdateListener;->onSelectionChanged(II)V

    return-void

    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/ButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private updateSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public addAllGroup()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    add-int v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public checkSelectedGroup()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    add-int v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public getGroupsToDelete()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sput-object p1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "GroupMultipleDeletionFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0300c0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mRootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f030107

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDeleteCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->dismissProgress()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDoneClicked()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->show(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GroupMultipleDeletionFragment"

    const-string v3, "can not work while loading."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->addAllGroup()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onSelectedInfoChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->removeAllGroup()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->removeGroup(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->addGroup(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSelectedInfoChanged()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->setDoneButton(II)V

    :goto_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->updateSelectAll(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->setDoneButton(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public removeAllGroup()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mList:Landroid/widget/ListView;

    add-int v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public setGroupsToDelete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-void
.end method

.method public setMultipleDeletionUpdateListener(Lcom/samsung/contacts/listener/ButtonUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mListener:Lcom/samsung/contacts/listener/ButtonUpdateListener;

    return-void
.end method
