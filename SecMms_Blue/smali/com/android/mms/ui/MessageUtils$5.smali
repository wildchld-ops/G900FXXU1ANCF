.class final Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$needDelay:Z

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v3, v6

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v7, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static {v6, v2, v3, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/mms/ui/MessageUtils$5$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageUtils$5$1;-><init>(Lcom/android/mms/ui/MessageUtils$5;)V

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x7d0

    :goto_1
    invoke-virtual {v6, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    move-wide v3, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    iget v7, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static {v3, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/mms/ui/MessageUtils$5$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessageUtils$5$2;-><init>(Lcom/android/mms/ui/MessageUtils$5;)V

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    if-eqz v7, :cond_4

    const-wide/16 v4, 0xfa0

    :cond_4
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
