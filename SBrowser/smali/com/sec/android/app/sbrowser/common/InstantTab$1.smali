.class Lcom/sec/android/app/sbrowser/common/InstantTab$1;
.super Lorg/chromium/content/browser/ContentViewClient;
.source "InstantTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/InstantTab;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/InstantTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    #getter for: Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->access$000(Lcom/sec/android/app/sbrowser/common/InstantTab;)I

    move-result v2

    #calls: Lcom/sec/android/app/sbrowser/common/InstantTab;->nativePrefetchCanceled(I)Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->access$100(Lcom/sec/android/app/sbrowser/common/InstantTab;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/InstantTab;->mPageFinishedReceived:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->access$202(Lcom/sec/android/app/sbrowser/common/InstantTab;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    #getter for: Lcom/sec/android/app/sbrowser/common/InstantTab;->mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->access$300(Lcom/sec/android/app/sbrowser/common/InstantTab;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "url"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab$1;->this$0:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
