.class Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile$1;
.super Ljava/lang/Object;
.source "RcsDetailViewSharedFile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile$1;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile$1;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    iget-object v1, v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile$1;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    #calls: Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;->access$000(Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
