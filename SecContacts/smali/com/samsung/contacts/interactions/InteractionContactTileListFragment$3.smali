.class Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;
.super Ljava/lang/Object;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1100(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getSelectionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactSelected(Lcom/android/contacts/common/list/ContactTileView;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactTileView;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$700(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$800(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$800(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v5, v0, v4, v7, v7}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->pickContact(Landroid/net/Uri;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v5, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->removeContact(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$900(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->setItemChecked(Ljava/lang/Long;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->access$1000(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onContextContactSelected(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method
