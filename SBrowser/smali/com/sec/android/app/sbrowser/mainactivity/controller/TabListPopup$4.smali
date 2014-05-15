.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;
.super Ljava/lang/Object;
.source "TabListPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getItemId()I

    move-result v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    instance-of v9, p1, Landroid/widget/TextView;

    if-eqz v9, :cond_1

    invoke-interface {v1, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v9

    invoke-interface {v1, v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    return-void

    :cond_1
    instance-of v9, p1, Landroid/widget/ImageButton;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v11

    add-int/2addr v9, v11

    packed-switch v9, :pswitch_data_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTabByIndex(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->notifyDataSetChanged()V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    if-gtz v9, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    new-instance v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;

    invoke-direct {v5, p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->updateOnCloseAllTabsVisual()V

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
