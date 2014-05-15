.class public Lcom/sec/android/app/sbrowser/common/WebLiveProxy;
.super Lcom/sec/android/app/sbrowser/common/AnimView;
.source "WebLiveProxy.java"


# static fields
.field private static final DEBUG_TRACE:Z


# instance fields
.field private mWebView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->mWebView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->mWebView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->getShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public recycleCache()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/AnimView;->recycleCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->mWebView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->mWebView:Lorg/chromium/content/browser/ContentView;

    :cond_0
    return-void
.end method

.method public setWebView(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->mWebView:Lorg/chromium/content/browser/ContentView;

    return-void
.end method
