.class Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/RestorePreviewMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$700(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$5;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->onMessageListItemClick()V

    :cond_0
    return-void
.end method
