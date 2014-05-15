.class Lcom/samsung/mms/util/SaveRestoreOperation$1;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;->showNoSmsSelectedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$1;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$1;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$1;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;->onSaveCompleted()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
