.class Lcom/samsung/dialer/calllog/DirectCallTutorialActivity$1;
.super Ljava/lang/Object;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishTutorial()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->finish()V

    return-void
.end method
