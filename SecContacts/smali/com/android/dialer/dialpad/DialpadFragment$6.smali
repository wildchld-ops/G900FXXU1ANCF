.class Lcom/android/dialer/dialpad/DialpadFragment$6;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$902(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z
    invoke-static {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1002(Lcom/android/dialer/dialpad/DialpadFragment;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v1, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/dialer/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1100(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    #calls: Lcom/android/dialer/dialpad/DialpadFragment;->sendMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1200(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mIsServiceJustConnected:Z
    invoke-static {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1002(Lcom/android/dialer/dialpad/DialpadFragment;Z)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$902(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
