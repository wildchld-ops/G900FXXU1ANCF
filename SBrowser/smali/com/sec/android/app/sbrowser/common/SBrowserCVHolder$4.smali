.class Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$4;
.super Lorg/chromium/content/browser/ContentViewRenderView;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->initContentViewRenderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/ContentViewRenderView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onReadyToRender()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onControllerChanged()V

    return-void
.end method
