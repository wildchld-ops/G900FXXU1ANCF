.class Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;
.super Ljava/lang/Object;
.source "SearchEngineXLargeUI.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->createUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->access$000(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;->access$000(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;)Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->clearDismissedSuggetionList()V

    :cond_0
    return-void
.end method
