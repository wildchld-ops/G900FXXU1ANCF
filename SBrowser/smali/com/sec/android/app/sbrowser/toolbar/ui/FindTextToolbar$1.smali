.class Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;
.super Ljava/lang/Object;
.source "FindTextToolbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCurrentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCurrentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCurrentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->isKeyboardShown(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Z)Z

    :cond_0
    return-void
.end method
