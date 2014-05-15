.class public Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;
.super Ljava/lang/Object;
.source "QuickAccessController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

.field private mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

.field private mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

.field private mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    return-object v0
.end method

.method private getMostVisitedCommited(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateQuickLaunchUI()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->updateMostVisitedUi(I)V

    goto :goto_0
.end method


# virtual methods
.method public blacklistURLFromMostVisited(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->BlacklistURLFromMostVisited(Ljava/lang/String;)V

    return-void
.end method

.method public blacklistURLFromMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->BlacklistURLFromMostVisited(Ljava/lang/String;)V

    return-void
.end method

.method public getIsDataAvailInNative()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getIsDataAvailInNative()Z

    move-result v0

    return v0
.end method

.method public getMostVisited(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisited()V

    return-void
.end method

.method public getMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickLaunchXlargeView:Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisited()V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisitedData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMostVistedItemSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVistedItemSize()I

    move-result v0

    return v0
.end method

.method public isBlacklistedURL(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isBlacklistedURL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMostVisited(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

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
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getMostVisitedCommited(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getMostVisitedCommited(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getMostVisitedCommited(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mPintabObserver:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mModel:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->onDestroy()V

    :cond_1
    return-void
.end method

.method public selectItemsFromDB()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const-string v15, "_id"

    const-string v12, "title"

    const-string v14, "url"

    const-string v10, "position"

    const-string v13, "touchicon"

    const-string v9, "parent"

    const-string v8, "dominant"

    const-string v11, " ASC"

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "parent"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "position"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "touchicon"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "dominant"

    aput-object v3, v4, v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "position ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v17, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;-><init>()V

    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmDominantColor(I)V

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setMtitle(Ljava/lang/String;)V

    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmTouchIcon([B)V

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmParent(I)V

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmPosition(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->setmParentList(Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    :cond_1
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v18
.end method
