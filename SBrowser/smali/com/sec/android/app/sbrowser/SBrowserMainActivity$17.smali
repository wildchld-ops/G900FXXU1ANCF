.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;
.super Ljava/lang/Object;
.source "SBrowserMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
