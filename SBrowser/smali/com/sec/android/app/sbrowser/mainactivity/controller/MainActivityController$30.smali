.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;
.super Ljava/lang/Thread;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onTabStateLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->restoreThumbnailDB()V

    return-void
.end method
