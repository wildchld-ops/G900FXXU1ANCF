.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URLCustomActionModeCallback"
.end annotation


# static fields
.field private static final ID_BOOKMARK:I = 0x1

.field private static final ID_PIN:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v6

    const-string v7, "enable-samsung-bookmark-tag"

    invoke-virtual {v6, v7}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0a0354 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->showControlsForContextualMenuBar(Landroid/content/Context;)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->hideControlsForContextualMenuBar()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
