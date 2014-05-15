.class Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    aput-boolean v4, v3, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->getitems()[Z

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v2, v5, v2

    aput-boolean v2, v3, v4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->mItems:[Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;)[Z

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v2, v3, v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->setselectall(Z)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->countselectall:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->setselectall(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;->controller:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->enableDisableButton(Z)V

    goto :goto_2
.end method
