.class public abstract Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomCursorTreeAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/samsung/contacts/widget/CustomCursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$1;,
        Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field mChildrenCursorHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCursorFilter:Lcom/samsung/contacts/widget/CustomCursorFilter;

.field mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mAutoRequery:Z

    return v0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 1

    iput-object p2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mAutoRequery:Z

    new-instance v0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;-><init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    return-void
.end method

.method private declared-synchronized releaseCursorHelpers()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->deactivate()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method protected abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized deactivateChildrenCursorHelper(I)V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getChild(II)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p4, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, p3, p5}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v0, p3}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object v2

    :cond_1
    move-object v2, p4

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end method

.method declared-synchronized getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;-><init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mCursorFilter:Lcom/samsung/contacts/widget/CustomCursorFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/widget/CustomCursorFilter;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/widget/CustomCursorFilter;-><init>(Lcom/samsung/contacts/widget/CustomCursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mCursorFilter:Lcom/samsung/contacts/widget/CustomCursorFilter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mCursorFilter:Lcom/samsung/contacts/widget/CustomCursorFilter;

    return-object v0
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p2, p4}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object v1

    :cond_1
    move-object v1, p3

    goto :goto_0
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

.method protected abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->releaseCursorHelpers()V

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->releaseCursorHelpers()V

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->getChildrenCursorHelper(IZ)Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mGroupCursorHelper:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->swapCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    return-void
.end method
