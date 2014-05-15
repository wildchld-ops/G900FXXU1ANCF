.class public Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;
.super Ljava/lang/Object;
.source "SBrowserTabSyncVO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;
    }
.end annotation


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;->historyList:Ljava/util/ArrayList;

    return-void
.end method
