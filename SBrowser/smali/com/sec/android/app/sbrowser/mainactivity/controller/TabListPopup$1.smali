.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a0016

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;->val$paramSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onOptionsItemSelected(I)Z

    return-void

    :cond_0
    const v0, 0x7f0a0017

    goto :goto_0
.end method
