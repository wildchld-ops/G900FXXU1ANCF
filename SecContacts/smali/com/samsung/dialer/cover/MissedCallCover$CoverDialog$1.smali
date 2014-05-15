.class Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;-><init>(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/content/Context;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

.field final synthetic val$this$0:Lcom/samsung/dialer/cover/MissedCallCover;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;Lcom/samsung/dialer/cover/MissedCallCover;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iput-object p2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->val$this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v0, v0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->dismissDialog()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1$1;-><init>(Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
