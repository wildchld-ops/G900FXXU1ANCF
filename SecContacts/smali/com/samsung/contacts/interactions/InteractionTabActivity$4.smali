.class Lcom/samsung/contacts/interactions/InteractionTabActivity$4;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionTabActivity;->scrollTab(Landroid/app/ActionBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

.field final synthetic val$bar:Landroid/app/ActionBar;

.field final synthetic val$savedTabPosition:I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;ILandroid/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iput p2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->val$savedTabPosition:I

    iput-object p3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->val$bar:Landroid/app/ActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v8}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    if-ne v5, v11, :cond_5

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v8, :cond_3

    move v5, v4

    :cond_2
    if-ne v5, v11, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v10, :cond_4

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_6

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v8, :cond_8

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_6
    if-nez v6, :cond_7

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    if-eqz v1, :cond_7

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v8, :cond_9

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_0

    instance-of v8, v6, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v8, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v8, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z
    invoke-static {v8}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$500(Lcom/samsung/contacts/interactions/InteractionTabActivity;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$1;

    invoke-direct {v8, p0, v7}, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$1;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity$4;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    new-instance v8, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;

    invoke-direct {v8, p0, v7}, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$2;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity$4;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    new-instance v8, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$3;

    invoke-direct {v8, p0, v7}, Lcom/samsung/contacts/interactions/InteractionTabActivity$4$3;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity$4;Lcom/android/internal/widget/ScrollingTabContainerView;)V

    const-wide/16 v9, 0x2bc

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
