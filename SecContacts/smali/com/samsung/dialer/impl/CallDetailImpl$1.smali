.class Lcom/samsung/dialer/impl/CallDetailImpl$1;
.super Ljava/lang/Object;
.source "CallDetailImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/CallDetailImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/CallDetailImpl;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/CallDetailImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/CallDetailImpl$1;->this$0:Lcom/samsung/dialer/impl/CallDetailImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl$1;->this$0:Lcom/samsung/dialer/impl/CallDetailImpl;

    #getter for: Lcom/samsung/dialer/impl/CallDetailImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/impl/CallDetailImpl;->access$000(Lcom/samsung/dialer/impl/CallDetailImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080073
        :pswitch_0
    .end packed-switch
.end method
