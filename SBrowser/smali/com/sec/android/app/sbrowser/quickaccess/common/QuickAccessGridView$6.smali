.class Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;
.super Ljava/lang/Object;
.source "QuickAccessGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleCellSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$finalTargetPosition:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$originalPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/ViewTreeObserver;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$deltaY:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$deltaX:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$originalPosition:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$finalTargetPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$deltaY:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$312(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$deltaX:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$412(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$originalPosition:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;->val$finalTargetPosition:I

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;II)V

    const/4 v0, 0x1

    return v0
.end method
