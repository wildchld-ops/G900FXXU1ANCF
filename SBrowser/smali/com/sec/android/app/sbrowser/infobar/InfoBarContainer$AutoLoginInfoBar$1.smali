.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

.field final synthetic val$finalAccountName:Ljava/lang/String;

.field final synthetic val$finalAuthToken:Ljava/lang/String;

.field final synthetic val$finalResult:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalAccountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalAuthToken:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$success:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalResult:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authToken"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "success"

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$success:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "result"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar$1;->val$finalResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    return-void
.end method
