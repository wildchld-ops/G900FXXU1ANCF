.class Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->enableOpacity:F
    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F
    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$700(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method
