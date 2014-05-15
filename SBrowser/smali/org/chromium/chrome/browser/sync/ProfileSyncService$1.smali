.class Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;
.super Ljava/lang/Object;
.source "ProfileSyncService.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getNewAuthToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;->val$username:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auth token for sync was null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully retrieved sync auth token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    #getter for: Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$100(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$1;->val$username:Ljava/lang/String;

    #calls: Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeTokenAvailable(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$200(Lorg/chromium/chrome/browser/sync/ProfileSyncService;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
