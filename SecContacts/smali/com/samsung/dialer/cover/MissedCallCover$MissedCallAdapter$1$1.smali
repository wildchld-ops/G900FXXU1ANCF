.class Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;

    iget-object v0, v0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iget-object v0, v0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1$1;->this$2:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;

    iget-object v0, v0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iget-object v0, v0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
