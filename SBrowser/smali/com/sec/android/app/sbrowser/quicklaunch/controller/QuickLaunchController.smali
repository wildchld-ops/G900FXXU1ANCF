.class public Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;
.super Ljava/lang/Object;
.source "QuickLaunchController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# instance fields
.field private mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

.field private mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklistURLFromMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->BlacklistURLFromMostVisited(Ljava/lang/String;)V

    return-void
.end method

.method public getMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisited()V

    return-void
.end method

.method public getMostVisitedCommited()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateQuickLaunchUI()V

    :cond_0
    return-void
.end method

.method public getMostVisitedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisitedData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMostVistedItemSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVistedItemSize()I

    move-result v0

    return v0
.end method

.method public isBlacklistedURL(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isBlacklistedURL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMostVisited(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isMostVisited(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->getMostVisitedCommited()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->getMostVisitedCommited()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
