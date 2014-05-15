.class Lcom/samsung/dialer/calllog/FakeCallActivity$1;
.super Ljava/lang/Object;
.source "FakeCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/FakeCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/FakeCallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/FakeCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/FakeCallActivity$1;->this$0:Lcom/samsung/dialer/calllog/FakeCallActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/FakeCallActivity$1;->this$0:Lcom/samsung/dialer/calllog/FakeCallActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/FakeCallActivity;->finish()V

    return-void
.end method
