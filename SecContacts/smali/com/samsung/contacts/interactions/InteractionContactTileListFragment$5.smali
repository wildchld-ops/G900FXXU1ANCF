.class Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$5;
.super Ljava/lang/Object;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$5;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$5;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->excuteSelectAllContacts()V

    return-void
.end method
