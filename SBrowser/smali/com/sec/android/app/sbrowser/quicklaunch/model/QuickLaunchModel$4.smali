.class Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;
.super Landroid/os/Handler;
.source "QuickLaunchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToGetMostVisited:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$802(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #getter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$100(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeGetMostVisited(III)V
    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$900(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;III)V

    return-void
.end method
