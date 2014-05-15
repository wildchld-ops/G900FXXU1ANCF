.class Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;->this$1:Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;->this$1:Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;

    iget-object v0, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #calls: Lcom/samsung/mms/ui/AutoSendingTestActivity;->startSendMessage()V
    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$800(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method
