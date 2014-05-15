.class Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->setSelectedGroup(I)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$500(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$600(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iput-boolean v2, v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    return-void
.end method
