.class Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;
.super Landroid/database/ContentObserver;
.source "HistoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/controller/HistoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PintabObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    #calls: Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->fillQuickAccessData()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->access$100(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
