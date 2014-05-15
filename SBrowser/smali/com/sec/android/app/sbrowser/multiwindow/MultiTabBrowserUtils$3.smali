.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$3;
.super Ljava/lang/Object;
.source "MultiTabBrowserUtils.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDropHandler(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabCreated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->handleNewTabCreation()V

    :cond_0
    return-void
.end method

.method public onTabRemoved(I)V
    .locals 0

    return-void
.end method
