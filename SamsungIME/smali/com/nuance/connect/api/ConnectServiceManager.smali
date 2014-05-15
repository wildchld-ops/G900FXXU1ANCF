.class public interface abstract Lcom/nuance/connect/api/ConnectServiceManager;
.super Ljava/lang/Object;
.source "ConnectServiceManager.java"


# virtual methods
.method public abstract dispatchAction(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
.end method

.method public abstract dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getUserSettings()Lcom/nuance/connect/internal/UserSettings;
.end method

.method public abstract refresh()V
.end method

.method public abstract registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Lcom/nuance/connect/util/ActionFilter;)V
.end method

.method public abstract registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/ActionDelegateCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/util/ActionFilter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
.end method

.method public abstract retryConnection()V
.end method

.method public abstract setHostInterface(Lcom/nuance/connect/host/service/HostInterface;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unregisterActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;)V
.end method

.method public abstract unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
.end method
