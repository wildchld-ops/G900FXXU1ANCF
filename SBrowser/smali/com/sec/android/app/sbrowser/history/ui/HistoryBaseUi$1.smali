.class Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;
.super Ljava/lang/Object;
.source "HistoryBaseUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->promptToClearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->clearAllHistroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->notifyChange()V

    :cond_0
    return-void
.end method
