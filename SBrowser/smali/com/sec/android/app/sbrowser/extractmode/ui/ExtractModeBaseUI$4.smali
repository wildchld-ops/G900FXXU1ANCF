.class Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;
.super Ljava/lang/Object;
.source "ExtractModeBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$400(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$400(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$400(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->dismiss()V

    :cond_0
    return-void
.end method
