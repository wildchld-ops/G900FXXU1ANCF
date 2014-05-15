.class Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;
.super Ljava/lang/Object;
.source "HistoryXlargeUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "historySelectedItemUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$700(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->finish()V

    return-void
.end method
