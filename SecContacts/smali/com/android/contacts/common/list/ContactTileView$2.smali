.class Lcom/android/contacts/common/list/ContactTileView$2;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileView;->createLongClickListener()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$2;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$2;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$2;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$2;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$2;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContextContactSelected(Lcom/android/contacts/common/list/ContactTileView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
