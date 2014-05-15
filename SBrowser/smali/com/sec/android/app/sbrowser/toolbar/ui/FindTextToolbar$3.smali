.class Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;
.super Ljava/lang/Object;
.source "FindTextToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isInReaderContext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->stopFindAndExit()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->onCloseButtonClicked()V

    goto :goto_0
.end method
