.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;
.super Ljava/lang/Object;
.source "DeleteSyncTab.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->deviceId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    return-void
.end method
