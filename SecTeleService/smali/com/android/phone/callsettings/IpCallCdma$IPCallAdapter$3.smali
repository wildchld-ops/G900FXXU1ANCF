.class Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x1

    const v1, 0x7f0a0129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->access$1900(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->access$1800(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ip number is changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->access$1800(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040054

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v6, v6, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
