.class Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$4;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->reSetDefaultPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDefaultPageCheck(Z)V

    :cond_0
    return-void
.end method
