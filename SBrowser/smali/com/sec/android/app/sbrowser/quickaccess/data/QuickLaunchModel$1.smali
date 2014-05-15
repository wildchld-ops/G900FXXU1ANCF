.class Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;
.super Ljava/lang/Object;
.source "QuickLaunchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->doFetchThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$100(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getURLThumbnail(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;

    iput-object v1, v2, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;->mThumbnail:[B

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$200(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;)Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->NotifyMostVisitedThumbnailChanged(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
