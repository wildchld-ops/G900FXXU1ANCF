.class Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$3;
.super Ljava/lang/Object;
.source "SearchEnginePhoneUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->showUi(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->access$000(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;)Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->access$100(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
