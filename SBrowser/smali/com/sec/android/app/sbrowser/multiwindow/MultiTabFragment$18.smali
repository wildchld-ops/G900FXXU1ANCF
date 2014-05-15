.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;
.super Ljava/lang/Object;
.source "MultiTabFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$rl:Landroid/widget/LinearLayout;

.field final synthetic val$tabTitle:Landroid/widget/TextView;

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;IZLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$rl:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$tabid:I

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$isIncognito:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$tabTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$tabid:I

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$isIncognito:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;->val$tabTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->startTabDrag(IZLandroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
