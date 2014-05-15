.class Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;
.super Ljava/lang/Object;
.source "MainActivityBaseUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->val$text:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->updateView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setStateofURL(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setModelAndFocus(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setUiController(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V

    return-void
.end method
