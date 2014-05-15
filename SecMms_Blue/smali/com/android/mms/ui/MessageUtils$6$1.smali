.class Lcom/android/mms/ui/MessageUtils$6$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v3, v5, v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v5, v6

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$mapSimSlot:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v6, v6, Lcom/android/mms/ui/MessageUtils$6;->val$readReportDataMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget v7, v7, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v6, v6, Lcom/android/mms/ui/MessageUtils$6;->val$readReportDataMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget v7, v7, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
