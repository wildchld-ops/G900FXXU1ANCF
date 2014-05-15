.class public Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmoticonTabManager"
.end annotation


# instance fields
.field private mCategoryIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Landroid/view/View;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerWidth:I

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private onEmoticonTabButtonClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, -0x1

    const v8, 0x7f0b0133

    const v7, 0x7f0b012e

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    iput v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainerWidth:I

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->onEmoticonTabButtonClickListener:Landroid/view/View$OnClickListener;

    const v2, 0x7f0b012c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v4, 0x7f0b012d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v4, 0x7f0b012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v4, 0x7f0b0130

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v4, 0x7f0b0131

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v5, 0x7f0b012d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v5, 0x7f0b012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v5, 0x7f0b0130

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v5, 0x7f0b0131

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    const v5, 0x7f0b0132

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->onEmoticonTabButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mSelectedTab:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {p1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onTabChangedByPager()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mSelectedTab:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->refreshTabSelector(I)V

    return-void
.end method

.method protected onTabSelected(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mSelectedTab:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryTabs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7002(I)I

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->refreshTabSelector(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected refreshTabSelector(I)V
    .locals 4

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emoticon check refreshTabSelector START pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/android/mms/ui/ComposeMessageFragment;->EMOTICON_TAB_SELECTED:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$EmoticonTabManager;->mCategoryIndex:Ljava/util/HashMap;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    return-void
.end method
