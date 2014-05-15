.class Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;
.super Ljava/lang/Object;
.source "WebAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createWebAlertView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->access$000(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;->onLaunchBlockedPopups()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mUrlString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->access$100(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/WebsiteUrl;->getPattern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    invoke-direct {v1, v0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->setAllowed(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
