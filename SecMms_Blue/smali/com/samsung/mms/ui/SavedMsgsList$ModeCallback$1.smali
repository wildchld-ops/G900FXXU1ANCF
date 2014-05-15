.class Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback$1;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback$1;->this$1:Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback$1;->this$1:Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;

    iget-object v0, v0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2100(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
