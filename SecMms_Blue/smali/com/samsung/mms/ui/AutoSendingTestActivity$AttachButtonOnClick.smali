.class Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;
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
    name = "AttachButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1000(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #setter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1102(Lcom/samsung/mms/ui/AutoSendingTestActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #setter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1202(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method
