.class Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;
.super Ljava/lang/Object;
.source "HistoryBaseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
