.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;
.super Ljava/lang/Object;
.source "SBrowserMainActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V
    .locals 5

    iget v3, p1, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.sconnect.START"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$16;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S Connect is not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
