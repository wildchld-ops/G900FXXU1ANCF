.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ToolbarPhoneUi"

    const-string v1, "ToolBarAutoHider : Send ToolBar BitMap from mToolBarViewObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->startCapturingToolBarBitmap(Z)V

    :cond_0
    return-void
.end method
