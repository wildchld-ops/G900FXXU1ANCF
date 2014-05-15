.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;
.super Ljava/lang/Object;
.source "MainActivityBaseUi.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->registerForHideUrlPrefChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->setMarginsWhenFindOnPageOperation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->unRegisterScrollOrFlingListner(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$300(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$400(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    iput-object v0, v7, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->removeMarginsWhenFindOnPageOperationDone(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method
