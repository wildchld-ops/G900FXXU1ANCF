.class public interface abstract Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
.super Ljava/lang/Object;
.source "IContentViewController.java"


# virtual methods
.method public abstract findOnPage(Ljava/lang/String;)V
.end method

.method public abstract getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.end method

.method public abstract getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getCurrentView()Lorg/chromium/content/browser/ContentView;
.end method

.method public abstract initializeLayerPositions()V
.end method

.method public abstract isConecttedDock()Z
.end method

.method public abstract isCurrentTabIncognito()Z
.end method

.method public abstract isPhoneMultiwindowEnabled()Z
.end method

.method public abstract isSurfaceReady()Z
.end method

.method public abstract notifyPageUrlChanged(I)V
.end method

.method public abstract notifyPrintBegin(II)V
.end method

.method public abstract notifyPrintBitmap(IZ)V
.end method

.method public abstract notifyPrintEnd()V
.end method

.method public abstract notifyTabManagerBitmapUpdated(I)V
.end method

.method public abstract notifyTabPrefetchCommitted(I)V
.end method

.method public abstract notifyUrlCheckedForBookmark(I)V
.end method

.method public abstract resetLayerPositions()V
.end method

.method public abstract setContentFullScreenMode()V
.end method

.method public abstract setHideUrlBarListener()V
.end method

.method public abstract setTopMarginForContentView()V
.end method
