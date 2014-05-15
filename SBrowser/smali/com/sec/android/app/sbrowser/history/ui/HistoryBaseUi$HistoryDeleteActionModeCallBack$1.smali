.class Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;
.super Ljava/lang/Object;
.source "HistoryBaseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;->this$1:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;->this$1:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;->this$1:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
