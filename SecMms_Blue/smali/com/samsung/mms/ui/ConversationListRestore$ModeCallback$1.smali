.class Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback$1;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback$1;->this$1:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    iget-object v0, v0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1300(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
