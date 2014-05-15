.class Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CoverUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v1, v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
