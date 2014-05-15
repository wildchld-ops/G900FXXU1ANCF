.class Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;
.super Ljava/lang/Object;
.source "QuickLaunchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->doFetchThumbnail(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$300(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeIsURLHasThumbnail(Ljava/lang/String;)Z
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$600(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mThumbnail:[B

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$500(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getURLThumbnail(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iput-object v3, v4, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mThumbnail:[B

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->val$result:Z

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->NotifyingThumbnailchanged(Z)V
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$700(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;->val$result:Z

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->NotifyingThumbnailchanged(Z)V
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$700(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)V

    :cond_3
    return-void
.end method
