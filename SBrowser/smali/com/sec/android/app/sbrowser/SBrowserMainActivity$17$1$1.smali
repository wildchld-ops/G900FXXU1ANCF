.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;
.super Ljava/lang/Object;
.source "SBrowserMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$500(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Landroid/os/Bundle;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnCreate(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$600(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #calls: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnStart()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$700(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #calls: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnResume()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$800(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1$1;->this$2:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17$1;->this$1:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$17;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHasWindowFocus:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$900(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Z

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->handleOnWindowFocusChanged(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$1000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Z)V

    return-void
.end method
