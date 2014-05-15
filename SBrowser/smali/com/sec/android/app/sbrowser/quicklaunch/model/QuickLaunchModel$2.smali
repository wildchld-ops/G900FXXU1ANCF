.class Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;
.super Ljava/lang/Object;
.source "QuickLaunchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->addMostVisited(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->val$title:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$300(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedCount:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$400(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$500(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getURLThumbnail(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$300(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->val$title:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->notify(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
