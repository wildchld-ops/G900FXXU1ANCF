.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;
.super Ljava/lang/Object;
.source "SynctabBaseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncValues"
.end annotation


# instance fields
.field historyData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    return-void
.end method
