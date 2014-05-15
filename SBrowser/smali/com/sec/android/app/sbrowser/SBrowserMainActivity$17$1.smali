.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;
.super Landroid/os/AsyncTask;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
