.class Lcom/samsung/contacts/editor/MoreEditorView$1;
.super Ljava/lang/Object;
.source "MoreEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/MoreEditorView;->setMoreOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/MoreEditorView;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/MoreEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "custom_ringtone"

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/MoreEditorView;->access$000(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/editor/MoreEditorView;->access$100(Lcom/samsung/contacts/editor/MoreEditorView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/MoreEditorView;->access$200(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->getRingtonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    iget-object v2, v2, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    invoke-interface {v2, v0, v1}, Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;->onStartActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "sec_custom_alert"

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/MoreEditorView;->access$000(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/editor/MoreEditorView;->access$300(Lcom/samsung/contacts/editor/MoreEditorView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/MoreEditorView;->access$200(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->getAlerttonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const-string v2, "sec_custom_vibration"

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/MoreEditorView;->access$000(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView$1;->this$0:Lcom/samsung/contacts/editor/MoreEditorView;

    #getter for: Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/contacts/editor/MoreEditorView;->access$200(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getVibrationPickerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x7

    goto :goto_0
.end method
