.class Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;
.super Ljava/lang/Object;
.source "TabManagerPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->displayTabsPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

.field final synthetic val$incogTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field final synthetic val$isIncognito:Z

.field final synthetic val$normalTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;ZILcom/sec/android/app/sbrowser/common/SBrowserTabControl;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$isIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$tabid:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$normalTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$incogTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$isIncognito:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$tabid:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$isIncognito:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$normalTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->mNeedAnimation:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview$2;->val$incogTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    goto :goto_0
.end method
