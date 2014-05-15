.class Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$1;
.super Ljava/lang/Object;
.source "SynctabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->triggerTabsyncManually()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->triggerTabsyncManually()V

    return-void
.end method
