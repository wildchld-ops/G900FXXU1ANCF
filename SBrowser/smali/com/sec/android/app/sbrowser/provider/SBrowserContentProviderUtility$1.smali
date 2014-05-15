.class Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$1;
.super Landroid/os/AsyncTask;
.source "SBrowserContentProviderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->ensureChromeisInitialised(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->ensureNativeChromeInitialised(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
