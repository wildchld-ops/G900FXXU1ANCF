.class Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;
.super Ljava/lang/Object;
.source "DialpadSearchViewUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showSearchResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$700(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "return at item click - mResultArrayList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$700(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v1}, Lcom/samsung/dialer/dialpad/ContactItem;->getSearchType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$700(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/ContactItem;

    #calls: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setNumberDigitsView(Lcom/samsung/dialer/dialpad/ContactItem;)V
    invoke-static {v2, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$600(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IndexOutOfBoundsException in dialogResultBuilder onClick"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$700(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/ContactItem;

    #calls: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showNumberListDialog(Lcom/samsung/dialer/dialpad/ContactItem;)Z
    invoke-static {v2, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$800(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_0
    .end packed-switch
.end method
