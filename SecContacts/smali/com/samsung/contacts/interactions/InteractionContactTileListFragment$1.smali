.class Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$1;
.super Ljava/lang/Object;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onAttach(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedStateChanged(JZ)V
    .locals 2

    const-string v0, "InteractionContactTileListFragment"

    const-string v1, " onitem check state for tile fragment "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
