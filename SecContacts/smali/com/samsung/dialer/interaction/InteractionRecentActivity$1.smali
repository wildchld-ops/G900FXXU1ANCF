.class Lcom/samsung/dialer/interaction/InteractionRecentActivity$1;
.super Ljava/lang/Object;
.source "InteractionRecentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/interaction/InteractionRecentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/interaction/InteractionRecentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$1;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$1;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->finish()V

    return-void
.end method
