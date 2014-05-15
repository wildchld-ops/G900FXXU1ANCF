.class Lcom/samsung/dialer/impl/ViewByImpl$1;
.super Ljava/lang/Object;
.source "ViewByImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/ViewByImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/ViewByImpl;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/ViewByImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0xa

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mVoicemailSourcesAvailable:Z
    invoke-static {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->access$000(Lcom/samsung/dialer/impl/ViewByImpl;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$102(Lcom/samsung/dialer/impl/ViewByImpl;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    const/16 v2, 0xb

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->MAX_LEN:I
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$302(Lcom/samsung/dialer/impl/ViewByImpl;I)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$100(Lcom/samsung/dialer/impl/ViewByImpl;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewBySelectorImpl;->setRenameViewbyArray(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030117

    iget-object v3, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dialer/impl/ViewByImpl;->access$100(Lcom/samsung/dialer/impl/ViewByImpl;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->sp:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->access$400(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->sp:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->access$400(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$102(Lcom/samsung/dialer/impl/ViewByImpl;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->MAX_LEN:I
    invoke-static {v1, v4}, Lcom/samsung/dialer/impl/ViewByImpl;->access$302(Lcom/samsung/dialer/impl/ViewByImpl;I)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$102(Lcom/samsung/dialer/impl/ViewByImpl;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->MAX_LEN:I
    invoke-static {v1, v4}, Lcom/samsung/dialer/impl/ViewByImpl;->access$302(Lcom/samsung/dialer/impl/ViewByImpl;I)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v2, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    #getter for: Lcom/samsung/dialer/impl/ViewByImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$200(Lcom/samsung/dialer/impl/ViewByImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->viewbyItemsArray:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$102(Lcom/samsung/dialer/impl/ViewByImpl;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/dialer/impl/ViewByImpl$1;->this$0:Lcom/samsung/dialer/impl/ViewByImpl;

    const/16 v2, 0x9

    #setter for: Lcom/samsung/dialer/impl/ViewByImpl;->MAX_LEN:I
    invoke-static {v1, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->access$302(Lcom/samsung/dialer/impl/ViewByImpl;I)I

    goto/16 :goto_0
.end method
