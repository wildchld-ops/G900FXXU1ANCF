.class Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;
.super Landroid/os/AsyncTask;
.source "SbrChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Web_EnableAutoBookmarkSetBySim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BROWSER_AUTO_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->access$102(J)J

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "add_operator_bookmarks"

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->access$100()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->addCarrierBookmarks(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->access$000(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Landroid/content/Context;)V

    goto :goto_0
.end method
