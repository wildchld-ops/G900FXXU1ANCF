.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;
.super Ljava/lang/Object;
.source "TabListPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->handleIconRowClickEvents(Landroid/view/View;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

.field final synthetic val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_1

    const v0, 0x7f0a0018

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onOptionsItemSelected(I)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a0019

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onOptionsItemSelected(I)Z

    goto :goto_0
.end method
