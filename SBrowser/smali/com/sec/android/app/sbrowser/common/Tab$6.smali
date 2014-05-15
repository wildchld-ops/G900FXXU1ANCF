.class Lcom/sec/android/app/sbrowser/common/Tab$6;
.super Lorg/samsung/content/sbrowser/SbrContentViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->initContentViewClients()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->displayToolBar()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onFindOnPageUIShown()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->findOnPage(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->onRecognizeResult(Z)V

    :cond_0
    return-void
.end method

.method public onSetBingSearchEngineAsDefault()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "dntshowbingpopup"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f04008c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a024b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/Tab$6$1;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/sbrowser/common/Tab$6$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$6;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c00f0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c003d

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$6$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$6$3;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$6;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0041

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$6$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$6$2;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$6;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->onSetBingSearchEngineAsDefault()V

    return-void
.end method

.method public scrapPageSavedFileName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->scrapPageSavedFileName(Ljava/lang/String;Z)V

    return-void
.end method
