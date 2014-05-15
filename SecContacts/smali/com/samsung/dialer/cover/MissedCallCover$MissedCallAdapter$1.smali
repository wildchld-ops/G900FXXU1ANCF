.class Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

.field final synthetic val$number:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iput-object p2, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->val$number:Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    const/4 v2, 0x0

    #calls: Lcom/samsung/dialer/cover/MissedCallCover;->updateStatusBar(Z)V
    invoke-static {v1, v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$300(Lcom/samsung/dialer/cover/MissedCallCover;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->val$number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.phone.extra.CALL_DIRECTCALL"

    const-string v2, "MissedCallCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAssistDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "origin"

    const-string v2, "from_dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MissedCallCover"

    const-string v2, "dialButton Call From clear cover "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;-><init>(Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
