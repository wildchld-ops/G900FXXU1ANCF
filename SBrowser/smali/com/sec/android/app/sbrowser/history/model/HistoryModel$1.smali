.class Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;
.super Landroid/os/Handler;
.source "HistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/model/HistoryModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    #calls: Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->notifySetAllHistory()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->access$000(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->GetAllHistroy()V

    goto :goto_0
.end method
