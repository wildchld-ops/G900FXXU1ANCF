.class Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;
.super Ljava/lang/Object;
.source "SBrowserCVHolder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$202(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
