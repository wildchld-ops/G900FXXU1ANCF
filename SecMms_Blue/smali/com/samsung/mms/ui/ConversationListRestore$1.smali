.class Lcom/samsung/mms/ui/ConversationListRestore$1;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/ConversationListRestore;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v2, v2, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v2, v2, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->selectAllList()V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v2, v2, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$1;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v2, v2, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->unSelectAllList()V

    goto :goto_1
.end method
