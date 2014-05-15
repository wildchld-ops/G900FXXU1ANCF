.class Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #calls: Lcom/samsung/mms/ui/AutoSendingTestActivity;->createRecipientDialog()V
    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method
