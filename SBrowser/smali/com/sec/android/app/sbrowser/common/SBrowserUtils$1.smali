.class final Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "SBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showSyncWithPcDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mSBrowserMainActivityContextId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;

    if-eqz v4, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "URL"

    const-string v5, "https://account.samsung.com/account/check.do"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    const-string v4, "https://account.samsung.com/account/check.do"

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserUtils$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
