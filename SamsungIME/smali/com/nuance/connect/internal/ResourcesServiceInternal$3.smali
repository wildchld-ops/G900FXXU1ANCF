.class Lcom/nuance/connect/internal/ResourcesServiceInternal$3;
.super Ljava/lang/Object;
.source "ResourcesServiceInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/internal/ResourcesServiceInternal;->processResourcesXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$processResources:Lcom/nuance/connect/internal/ConnectResources;

.field final synthetic val$processing:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Lcom/nuance/connect/internal/ConnectResources;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iput-object p2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processResources:Lcom/nuance/connect/internal/ConnectResources;

    iput-object p4, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processing:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$id:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResourcesXML.BEGIN!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processResources:Lcom/nuance/connect/internal/ConnectResources;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesBegin(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processResources:Lcom/nuance/connect/internal/ConnectResources;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processing:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageStrings(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$processResources:Lcom/nuance/connect/internal/ConnectResources;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$900(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageComplete(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResourcesXML.END! language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
