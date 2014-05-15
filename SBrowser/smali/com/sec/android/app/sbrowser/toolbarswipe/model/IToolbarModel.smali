.class public interface abstract Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
.super Ljava/lang/Object;
.source "IToolbarModel.java"


# virtual methods
.method public abstract addToCache(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract addToSdCard(ILandroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public abstract evictBitmapFromCache()V
.end method

.method public abstract getBitmapFromCompositor(Lorg/chromium/content/browser/ContentView;)Landroid/graphics/Bitmap;
.end method

.method public abstract getContentBitmapFromSDcard(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getQuickLaunchPageBitmap(Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract removeFromCache(I)V
.end method
