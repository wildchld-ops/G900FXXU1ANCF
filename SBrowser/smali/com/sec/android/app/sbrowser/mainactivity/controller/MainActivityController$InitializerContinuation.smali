.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;
.super Ljava/lang/Object;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitializerContinuation"
.end annotation


# instance fields
.field private mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

.field private mOnResumePending:Z

.field private mPendingActivityResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedInstance:Landroid/os/Bundle;

.field private mWaitingForFirstDraw:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mOnResumePending:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mSavedInstance:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onPause()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onDestroy()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onPauseCloseTabs()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onResume()V

    return-void
.end method

.method private onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onDestroy()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->access$2900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    :cond_0
    return-void
.end method

.method private onNativeLibraryLoaded()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeLibraryLoaded in Main Activity with mDestroyed:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDestroyed:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$3000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->createSbrPasswordManagerUtility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->doPostUiInflateProcess()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$3000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiWindowTabCreated:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$3202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mSavedInstance:Landroid/os/Bundle;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onCreate(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->access$3300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mSavedInstance:Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mOnResumePending:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mOnResumePending:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->resumeNowAndProcessPendingItems()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mOnResumePending:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->access$3400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    :cond_0
    return-void
.end method

.method private onPauseCloseTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->access$3400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    :cond_0
    return-void
.end method

.method private onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->resumeNowAndProcessPendingItems()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mOnResumePending:Z

    goto :goto_0
.end method

.method private resumeNowAndProcessPendingItems()V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    invoke-virtual {v7, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iput-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingNewIntents:Ljava/util/List;

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;

    iget v0, v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->requestCode:I

    iget v1, v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->resultCode:I

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->data:Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    invoke-virtual {v7, v0, v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iput-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onResume()V
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->access$3500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    return-void
.end method


# virtual methods
.method public firstDrawComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mWaitingForFirstDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mWaitingForFirstDraw:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onNativeLibraryLoaded()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mMainWithNative:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->mPendingActivityResults:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;-><init>(IILandroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onFailure()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFailure Triggred"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onNativeLibraryLoaded()V

    return-void
.end method
