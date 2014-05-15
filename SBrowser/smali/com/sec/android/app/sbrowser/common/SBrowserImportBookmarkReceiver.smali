.class public Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserImportBookmarkReceiver.java"


# static fields
.field private static final BOOKMARK_XML:Ljava/lang/String; = "/bookmark.xml"

.field private static final REQUEST_RESPONSE_BROWSER:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_BROWSER"

.field private static final REQUEST_RESTORE_BROWSER:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_BROWSER"

.field private static final TAG:Ljava/lang/String; = "SBrowserImportBookmarkReceiver"


# instance fields
.field mContext:Landroid/content/Context;

.field mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    return-void
.end method

.method private RestoreBookmarks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v3, "SAVE_PATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SOURCE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SBrowserImportBookmarkReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.sec.android.intent.action.REQUEST_RESTORE_BROWSER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.REQUEST_RESTORE_BROWSER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "SBrowserImportBookmarkReceiver"

    const-string v4, "onReceive : REQUEST_RESTORE_BROWSER"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->RestoreBookmarks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "SBrowserImportBookmarkReceiver"

    const-string v4, "onReceive : Action value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
