.class Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;
.super Ljava/lang/Object;
.source "DialpadSearchViewUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showNumberListDialog(Lcom/samsung/dialer/dialpad/ContactItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

.field final synthetic val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;->val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;->val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    #calls: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setNumberDigitsView(Lcom/samsung/dialer/dialpad/ContactItem;)V
    invoke-static {v1, v0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$600(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)V

    return-void
.end method
