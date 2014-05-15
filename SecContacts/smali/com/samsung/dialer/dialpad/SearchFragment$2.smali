.class Lcom/samsung/dialer/dialpad/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/SearchFragment;->showNumberListDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

.field final synthetic val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/SearchFragment;Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$2;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/SearchFragment$2;->val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$2;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$2;->val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/dialer/dialpad/SearchFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request place call (in dialog) - number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$2;->val$numAdapter:Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
