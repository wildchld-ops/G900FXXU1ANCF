.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;
.super Ljava/lang/Object;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, ".callsettings.AutoRejectList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-virtual {v3, v1}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$1;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->clearJobs()V
    invoke-static {v3}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method
