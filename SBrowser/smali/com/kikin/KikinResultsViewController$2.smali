.class Lcom/kikin/KikinResultsViewController$2;
.super Ljava/lang/Object;
.source "KikinResultsViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZLcom/kikin/KikinBarState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kikin/KikinResultsViewController;

.field final synthetic val$mode:Landroid/view/ActionMode;

.field final synthetic val$openState:Lcom/kikin/KikinBarState;

.field final synthetic val$restore:Z


# direct methods
.method constructor <init>(Lcom/kikin/KikinResultsViewController;Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/KikinResultsViewController$2;->this$0:Lcom/kikin/KikinResultsViewController;

    iput-object p2, p0, Lcom/kikin/KikinResultsViewController$2;->val$mode:Landroid/view/ActionMode;

    iput-boolean p3, p0, Lcom/kikin/KikinResultsViewController$2;->val$restore:Z

    iput-object p4, p0, Lcom/kikin/KikinResultsViewController$2;->val$openState:Lcom/kikin/KikinBarState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController$2;->this$0:Lcom/kikin/KikinResultsViewController;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController$2;->val$mode:Landroid/view/ActionMode;

    iget-boolean v2, p0, Lcom/kikin/KikinResultsViewController$2;->val$restore:Z

    iget-object v3, p0, Lcom/kikin/KikinResultsViewController$2;->val$openState:Lcom/kikin/KikinBarState;

    #calls: Lcom/kikin/KikinResultsViewController;->showKikinResultsContainer(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V
    invoke-static {v0, v1, v2, v3}, Lcom/kikin/KikinResultsViewController;->access$100(Lcom/kikin/KikinResultsViewController;Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V

    iget-object v0, p0, Lcom/kikin/KikinResultsViewController$2;->this$0:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x0

    #setter for: Lcom/kikin/KikinResultsViewController;->mCallbackOnKikinHide:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->access$202(Lcom/kikin/KikinResultsViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
