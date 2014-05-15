.class Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;
.super Landroid/database/ContentObserver;
.source "QuickAccessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PintabObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isQuickAccessShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->refreshPinTabGridView()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->getmQuickAccessUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
