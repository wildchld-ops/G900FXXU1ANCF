.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;
.super Ljava/lang/Thread;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onTabClose(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

.field final synthetic val$localTabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;->val$localTabId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;->val$localTabId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->deleteThumbnail(I)V

    return-void
.end method
