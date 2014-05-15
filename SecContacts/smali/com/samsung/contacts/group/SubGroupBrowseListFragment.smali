.class public Lcom/samsung/contacts/group/SubGroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "SubGroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

.field private mContext:Landroid/content/Context;

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

.field private mRootView:Landroid/view/View;

.field private final mSubGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$1;-><init>(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mSubGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->createGoogleGroupsLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/SubGroupBrowseListFragment;)Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    return-object v0
.end method

.method private createGoogleGroupsLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8

    const/4 v5, 0x0

    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type==\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name==\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "data_set IS NULL"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/samsung/contacts/group/GroupListLoaderFactory;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_set==\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030122

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mAdapter:Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/contacts/group/SubGroupBrowseListAdapter;->getGroupInfo(I)Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

    invoke-interface {v1, v0}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;->onViewGroupAction(Lcom/samsung/contacts/group/GroupInfo;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mSubGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->mListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

    return-void
.end method
