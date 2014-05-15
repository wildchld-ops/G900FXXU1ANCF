.class public abstract Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupCommonBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/android/contacts/group/GroupBrowseListAdapter$onGroupSectionActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/group/GroupBrowseListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/widget/ExpandableListView$OnGroupClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/contacts/group/GroupBrowseListAdapter$onGroupSectionActionListener;"
    }
.end annotation


# instance fields
.field protected KEY_EXPANDED_SECTIONS:Ljava/lang/String;

.field protected mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mExpandableListView:Landroid/widget/ExpandableListView;

.field protected mExpandedSectoins:[Z

.field private mGroupListCursor:Landroid/database/Cursor;

.field private mListener:Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mRootView:Landroid/view/View;

.field protected mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field protected mSelectionToScreenRequested:Z

.field protected mVerticalScrollbarPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mVerticalScrollbarPosition:I

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setSelectedGroup(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->setSelectedGroup(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidateViews()V

    return-void
.end method


# virtual methods
.method protected bindGroupList()V
    .locals 2

    const-string v0, "GroupCommonBrowseListFragment"

    const-string v1, "bindGroupList"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "GroupCommonBrowseListFragment"

    const-string v1, "bindGroupList: cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->swapCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->expandSections()V

    goto :goto_0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected expandSections()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectionToScreenRequested:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->restoreExpandedSections()V

    const v0, 0x7f0300a5

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->createListAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->getAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListAdapter;->mergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "groupInfo"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "GroupCommonBrowseListFragment"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->bindGroupList()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->saveExpandedSections()V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public restoreExpandedSections()V
    .locals 6

    const/4 v5, 0x5

    new-array v3, v5, [Z

    iput-object v3, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->KEY_EXPANDED_SECTIONS:Ljava/lang/String;

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveExpandedSections()V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mExpandedSectoins:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->KEY_EXPANDED_SECTIONS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;

    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method

.method protected viewGroup(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->setSelectedGroup(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Lcom/samsung/contacts/group/GroupInfo;)V

    :cond_0
    return-void
.end method
