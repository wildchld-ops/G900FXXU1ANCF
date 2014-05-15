.class Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;
.super Landroid/os/Handler;
.source "QuickLaunchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToInitModel:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$002(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;->this$0:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;

    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeInit()I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$200(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->access$102(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;I)I

    return-void
.end method
