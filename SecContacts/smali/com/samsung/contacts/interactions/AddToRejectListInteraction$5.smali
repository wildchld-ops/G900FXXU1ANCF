.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$5;
.super Ljava/lang/Object;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

.field final synthetic val$result:Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$5;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$5;->val$result:Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$5;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$5;->val$result:Lcom/samsung/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
