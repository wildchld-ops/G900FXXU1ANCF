.class Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;
.super Ljava/lang/Object;
.source "DetailMultiSimOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;->createSelectSimDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;

.field final synthetic val$accountAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->this$0:Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;

    iput-object p2, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "simSlot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
