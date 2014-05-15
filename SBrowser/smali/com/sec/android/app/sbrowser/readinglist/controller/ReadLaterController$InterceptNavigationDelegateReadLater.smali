.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;
.super Ljava/lang/Object;
.source "ReadLaterController.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterceptNavigationDelegateReadLater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlLoadRequested(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
