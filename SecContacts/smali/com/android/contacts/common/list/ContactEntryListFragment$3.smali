.class Lcom/android/contacts/common/list/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;->addTwStrokeIndexScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 11

    const/16 v10, 0x13

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getHandleCounts()[I

    move-result-object v1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v6, "ContactEntryListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addTwIndexScroll     sectionIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-le p1, v10, :cond_2

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getHeaderTitles()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getHeaderTitles()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getHeaderTitles()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v10, :cond_1

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexCounts()[I

    move-result-object v6

    aget v6, v6, v5

    add-int/2addr v2, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_5

    aget v6, v1, v3

    if-nez v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget v6, v1, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    aget v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v0, v6

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-boolean v6, v6, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    aget v6, v1, p1

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v6}, Lcom/android/contacts/common/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/common/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/common/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v7, p1

    add-int/2addr v7, v0

    sub-int/2addr v7, v4

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    :cond_7
    return-void
.end method
