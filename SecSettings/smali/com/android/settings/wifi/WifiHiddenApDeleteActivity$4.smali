.class Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->enableOpacity:F
    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F
    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$700(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method
