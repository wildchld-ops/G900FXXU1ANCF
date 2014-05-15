.class Lcom/samsung/mms/util/SaveRestoreOperation$3;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;->showMmsSelectedDialog([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$3;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iput-object p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$3;->val$ids:[J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$3;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$3;->val$ids:[J

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$3;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$500(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v2

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V
    invoke-static {v0, v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$900(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V

    return-void
.end method
