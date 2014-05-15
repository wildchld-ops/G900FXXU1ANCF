.class Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;
.super Ljava/lang/Object;
.source "ChromeViewAnimation.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;->this$0:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify_newWebPageIsAboutToOpen(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    return-void
.end method

.method public notify_newWebPageIsNowAvailable(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    return-void
.end method
