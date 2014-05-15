.class Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility$1;
.super Ljava/lang/Object;
.source "SBrowserBookmarkProviderUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->ensureChromeisInitialised(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProviderClient;->ensureNativeChromeInitialised(Landroid/content/Context;)V

    return-void
.end method
