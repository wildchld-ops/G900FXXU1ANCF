.class public interface abstract Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoReadyCallback;
.super Ljava/lang/Object;
.source "SbrWebsiteSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageInfoReadyCallback"
.end annotation


# virtual methods
.method public abstract onStorageInfoReady(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
        value = "StorageInfoReadyCallback"
    .end annotation
.end method
