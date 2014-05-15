.class Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;
.super Ljava/lang/Object;
.source "ChromeViewAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #getter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$000(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    #getter for: Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->access$000(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getWebPageNavegationListener()Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->setWebPageNavegationListener(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getBrowserTabFocusListener()Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->setBrowserTabFocusListener(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;)V

    :cond_0
    return-void
.end method
