.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;
.super Landroid/os/AsyncTask;
.source "ToolbarSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

.field final synthetic val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

.field final synthetic val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iput p4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private isValidUrl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabId:I

    invoke-interface {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->getContentBitmapFromSDcard(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    move-result-object v7

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mSecurityLevel:I
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1002(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;I)I

    :cond_0
    sget-object v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$SecurityLevel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$SecurityLevel;->values()[Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$SecurityLevel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mSecurityLevel:I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1000(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)I

    move-result v8

    aget-object v7, v7, v8

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsSecurePage:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1102(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabUrl()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1202(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    const-string v7, ""

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsReaderModeEnabled:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1602(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsIncognito:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1702(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->canGoBack()Z

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1802(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->canGoForward()Z

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1902(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$2000(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getContentHolderHeight()I

    move-result v1

    const/4 v6, -0x1

    if-eq v6, v1, :cond_5

    move v5, v1

    if-le v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #calls: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v6, v2, v5}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$2100(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabId:I

    invoke-interface {v6, v2, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->addToCache(Landroid/graphics/Bitmap;I)V

    :cond_5
    return-object v2

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #calls: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isQuickLaunchPage(Ljava/lang/String;)Z
    invoke-static {v6, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$1400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1202(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    const-string v7, ""

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "https://"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->isUrlBookmarked(Ljava/lang/String;)Z

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsBookmarked:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1502(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z

    goto/16 :goto_0

    :cond_9
    const-string v6, "ToolbarSwipeHandler"

    const-string v7, "TAB_SWIPE Tab is null, tabView Connot be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$tabAtPosition:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->setTopToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Lcom/sec/android/app/sbrowser/common/Tab;)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->access$2200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #calls: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->setBottomToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->access$2300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->val$pageData:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "ToolbarSwipeHandler"

    const-string v2, "TAB_SWIPE onPostExecute - Show white screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
