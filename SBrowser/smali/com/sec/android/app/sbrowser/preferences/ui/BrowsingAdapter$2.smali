.class Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;
.super Ljava/lang/Object;
.source "BrowsingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    aput-boolean v3, v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->getitems()[Z

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v1, v4, v1

    aput-boolean v1, v2, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v1, v2, v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v2, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->setselectall(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v2, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->setselectall(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    goto :goto_2
.end method
