.class Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;
.super Ljava/lang/Object;
.source "QuickAccessGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
