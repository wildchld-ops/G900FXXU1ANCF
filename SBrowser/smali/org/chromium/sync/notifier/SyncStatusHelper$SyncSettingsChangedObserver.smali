.class public abstract Lorg/chromium/sync/notifier/SyncStatusHelper$SyncSettingsChangedObserver;
.super Ljava/lang/Object;
.source "SyncStatusHelper.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/sync/notifier/SyncStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncSettingsChangedObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/sync/notifier/SyncStatusHelper$SyncSettingsChangedObserver;->syncSettingsChanged()V

    :cond_0
    return-void
.end method

.method protected abstract syncSettingsChanged()V
.end method
