.class Lcom/android/phone/callsettings/IpCallCdma$5;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1000(Lcom/android/phone/callsettings/IpCallCdma;Z)Landroid/database/Cursor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;Landroid/database/Cursor;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040054

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
