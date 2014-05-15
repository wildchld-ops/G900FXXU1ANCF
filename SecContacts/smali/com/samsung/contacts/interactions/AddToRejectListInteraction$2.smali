.class Lcom/samsung/contacts/interactions/AddToRejectListInteraction$2;
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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$2;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListInteraction$2;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->clearJobs()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->access$200(Lcom/samsung/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method
