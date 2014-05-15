.class Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;
.super Ljava/lang/Object;
.source "ChromeViewAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->finishAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #getter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$100(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Lcom/sec/android/app/sbrowser/common/AnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/AnimView;->recycleCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #getter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$200(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Lcom/sec/android/app/sbrowser/common/AnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/AnimView;->recycleCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldWebView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldWebView:Lorg/chromium/content/browser/ContentView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mNewWebView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mNewWebView:Lorg/chromium/content/browser/ContentView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #getter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$300(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #setter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$302(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method
