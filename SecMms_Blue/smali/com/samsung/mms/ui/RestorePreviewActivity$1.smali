.class Lcom/samsung/mms/ui/RestorePreviewActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "RestorePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/RestorePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$000(Lcom/samsung/mms/ui/RestorePreviewActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040060

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/RestorePreviewActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/data/SavedSmsMessage;

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$100(Lcom/samsung/mms/ui/RestorePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;

    invoke-virtual {v2}, Lcom/samsung/mms/data/SavedSmsMessage;->getId()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$200(Lcom/samsung/mms/ui/RestorePreviewActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->bind(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setVisibility(I)V

    return-object v0
.end method
