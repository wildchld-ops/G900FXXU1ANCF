.class Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$2;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    return-void
.end method
