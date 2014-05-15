.class public Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;
.super Ljava/lang/Object;
.source "SBrowserTabSyncVO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSyncHistory"
.end annotation


# instance fields
.field public favIcon:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->favIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO$TabSyncHistory;->title:Ljava/lang/String;

    return-void
.end method
