.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;
.super Ljava/lang/Object;
.source "MultiTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->addTabView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

.field final synthetic val$isIncognito:Z

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->val$isIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->val$tabid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->val$isIncognito:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->val$tabid:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->saveReturnTabPos()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    goto :goto_0
.end method
