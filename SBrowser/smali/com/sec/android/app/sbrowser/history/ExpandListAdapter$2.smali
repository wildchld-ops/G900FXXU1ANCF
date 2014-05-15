.class Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;
.super Ljava/lang/Object;
.source "ExpandListAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->showPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setGroupItMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setGroupItMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->checkDeleted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0310
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
