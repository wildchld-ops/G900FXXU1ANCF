.class Lcom/samsung/mms/ui/RestorePreviewActivity$2;
.super Ljava/lang/Object;
.source "RestorePreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/RestorePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$400(Lcom/samsung/mms/ui/RestorePreviewActivity;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #calls: Lcom/samsung/mms/ui/RestorePreviewActivity;->getId()[J
    invoke-static {v1}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$300(Lcom/samsung/mms/ui/RestorePreviewActivity;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/RestorePreviewActivity;->access$400(Lcom/samsung/mms/ui/RestorePreviewActivity;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
