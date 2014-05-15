.class Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;
.super Ljava/lang/Object;
.source "ClearBrowsingDataDialogFragmentController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x7f0a0081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)[Z

    move-result-object v2

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->setCountselectall(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)[Z

    move-result-object v2

    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->setCountselectall(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    goto :goto_1
.end method
