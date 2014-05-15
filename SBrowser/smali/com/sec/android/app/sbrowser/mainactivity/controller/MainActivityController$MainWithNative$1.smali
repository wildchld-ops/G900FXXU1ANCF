.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->processVoiceResults(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;->val$query:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSearchQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
