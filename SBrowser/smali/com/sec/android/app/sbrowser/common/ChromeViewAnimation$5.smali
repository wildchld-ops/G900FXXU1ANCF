.class Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;
.super Ljava/lang/Object;
.source "ChromeViewAnimation.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldWebView:Lorg/chromium/content/browser/ContentView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldWebView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mNewWebView:Lorg/chromium/content/browser/ContentView;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->startAnimation_PART1(Lorg/chromium/content/browser/ContentView;Z)V

    goto :goto_0
.end method

.method public preTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldWebView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mNewWebView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->initializeAnimation(Lorg/chromium/content/browser/ContentView;)V

    return-void
.end method
