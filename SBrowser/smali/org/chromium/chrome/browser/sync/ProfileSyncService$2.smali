.class Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;
.super Ljava/lang/Object;
.source "ProfileSyncService.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getOAuth2AuthToken(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field final synthetic val$nativeCallback:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iput p2, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;->val$nativeCallback:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;->this$0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    #getter for: Lorg/chromium/chrome/browser/sync/ProfileSyncService;->mNativeProfileSyncServiceAndroid:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$100(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$2;->val$nativeCallback:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lorg/chromium/chrome/browser/sync/ProfileSyncService;->nativeOAuth2TokenFetched(IILjava/lang/String;Z)V
    invoke-static {v1, v2, v3, p1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->access$300(Lorg/chromium/chrome/browser/sync/ProfileSyncService;IILjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
